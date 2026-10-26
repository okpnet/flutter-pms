import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemPageRfe {
  factory Variables$Query$ItemPageRfe({
    required String mstrItemId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ItemPageRfe._({
    r'mstrItemId': mstrItemId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ItemPageRfe._(this._$data);

  factory Variables$Query$ItemPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrItemId = data['mstrItemId'];
    result$data['mstrItemId'] = (l$mstrItemId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ItemPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemId => (_$data['mstrItemId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    result$data['mstrItemId'] = l$mstrItemId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemPageRfe<Variables$Query$ItemPageRfe>
  get copyWith => CopyWith$Variables$Query$ItemPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$mstrItemId = mstrItemId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrItemId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ItemPageRfe<TRes> {
  factory CopyWith$Variables$Query$ItemPageRfe(
    Variables$Query$ItemPageRfe instance,
    TRes Function(Variables$Query$ItemPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ItemPageRfe;

  factory CopyWith$Variables$Query$ItemPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemPageRfe;

  TRes call({
    String? mstrItemId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ItemPageRfe<TRes>
    implements CopyWith$Variables$Query$ItemPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ItemPageRfe(this._instance, this._then);

  final Variables$Query$ItemPageRfe _instance;

  final TRes Function(Variables$Query$ItemPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ItemPageRfe._({
      ..._instance._$data,
      if (mstrItemId != _undefined && mstrItemId != null)
        'mstrItemId': (mstrItemId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemPageRfe<TRes>
    implements CopyWith$Variables$Query$ItemPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemPageRfe(this._res);

  TRes _res;

  call({
    String? mstrItemId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ItemPageRfe {
  Query$ItemPageRfe({this.mstrItemByMstrItemId, this.$__typename = 'Query'});

  factory Query$ItemPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe(
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemPageRfe$mstrItemByMstrItemId? mstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemByMstrItemId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final lOther$mstrItemByMstrItemId = other.mstrItemByMstrItemId;
    if (l$mstrItemByMstrItemId != lOther$mstrItemByMstrItemId) {
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

extension UtilityExtension$Query$ItemPageRfe on Query$ItemPageRfe {
  CopyWith$Query$ItemPageRfe<Query$ItemPageRfe> get copyWith =>
      CopyWith$Query$ItemPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ItemPageRfe<TRes> {
  factory CopyWith$Query$ItemPageRfe(
    Query$ItemPageRfe instance,
    TRes Function(Query$ItemPageRfe) then,
  ) = _CopyWithImpl$Query$ItemPageRfe;

  factory CopyWith$Query$ItemPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemPageRfe;

  TRes call({
    Query$ItemPageRfe$mstrItemByMstrItemId? mstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes>
  get mstrItemByMstrItemId;
}

class _CopyWithImpl$Query$ItemPageRfe<TRes>
    implements CopyWith$Query$ItemPageRfe<TRes> {
  _CopyWithImpl$Query$ItemPageRfe(this._instance, this._then);

  final Query$ItemPageRfe _instance;

  final TRes Function(Query$ItemPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe(
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId as Query$ItemPageRfe$mstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes>
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId.stub(_then(_instance))
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe<TRes>
    implements CopyWith$Query$ItemPageRfe<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe(this._res);

  TRes _res;

  call({
    Query$ItemPageRfe$mstrItemByMstrItemId? mstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes>
  get mstrItemByMstrItemId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId.stub(_res);
}

const documentNodeQueryItemPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
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
            name: NameNode(value: 'mstrItemByMstrItemId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrItemId'),
                value: VariableNode(name: NameNode(value: 'mstrItemId')),
              ),
            ],
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
                  name: NameNode(value: 'mstrItemKindId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mstrItemKindByMstrItemKindId'),
                  alias: NameNode(value: 'kinds'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrItemKindId'),
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
                  name: NameNode(value: 'identification'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'controlCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mstrManufacturerByMstrManufacturerId'),
                  alias: NameNode(value: 'manufacture'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrManufacturerId'),
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
                  name: NameNode(value: 'labelCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
                  name: NameNode(value: 'mstrItemLotId'),
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
Query$ItemPageRfe _parserFn$Query$ItemPageRfe(Map<String, dynamic> data) =>
    Query$ItemPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ItemPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ItemPageRfe?,
);

class Options$Query$ItemPageRfe
    extends graphql.QueryOptions<Query$ItemPageRfe> {
  Options$Query$ItemPageRfe({
    String? operationName,
    required Variables$Query$ItemPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryItemPageRfe,
         parserFn: _parserFn$Query$ItemPageRfe,
       );

  final OnQueryComplete$Query$ItemPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemPageRfe
    extends graphql.WatchQueryOptions<Query$ItemPageRfe> {
  WatchOptions$Query$ItemPageRfe({
    String? operationName,
    required Variables$Query$ItemPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryItemPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemPageRfe,
       );
}

class FetchMoreOptions$Query$ItemPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemPageRfe,
       );
}

extension ClientExtension$Query$ItemPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemPageRfe>> query$ItemPageRfe(
    Options$Query$ItemPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemPageRfe> watchQuery$ItemPageRfe(
    WatchOptions$Query$ItemPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ItemPageRfe({
    required Query$ItemPageRfe data,
    required Variables$Query$ItemPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemPageRfe? readQuery$ItemPageRfe({
    required Variables$Query$ItemPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryItemPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemPageRfe> useQuery$ItemPageRfe(
  Options$Query$ItemPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemPageRfe> useWatchQuery$ItemPageRfe(
  WatchOptions$Query$ItemPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemPageRfe$Widget
    extends graphql_flutter.Query<Query$ItemPageRfe> {
  Query$ItemPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ItemPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ItemPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemPageRfe$mstrItemByMstrItemId {
  Query$ItemPageRfe$mstrItemByMstrItemId({
    required this.mstrItemId,
    required this.mstrItemKindId,
    this.kinds,
    required this.code,
    this.identification,
    this.controlCode,
    this.manufacture,
    this.labels,
    this.labelCode,
    this.detailTexts,
    this.sharedUnitId,
    this.unit,
    this.mstrItemLotId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrItem',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$kinds = json['kinds'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$controlCode = json['controlCode'];
    final l$manufacture = json['manufacture'];
    final l$labels = json['labels'];
    final l$labelCode = json['labelCode'];
    final l$detailTexts = json['detailTexts'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$mstrItemLotId = json['mstrItemLotId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId(
      mstrItemId: (l$mstrItemId as String),
      mstrItemKindId: (l$mstrItemKindId as String),
      kinds: l$kinds == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$kinds.fromJson(
              (l$kinds as Map<String, dynamic>),
            ),
      code: (l$code as String),
      identification: (l$identification as String?),
      controlCode: (l$controlCode as String?),
      manufacture: l$manufacture == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture.fromJson(
              (l$manufacture as Map<String, dynamic>),
            ),
      labels: l$labels == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      labelCode: (l$labelCode as String?),
      detailTexts: l$detailTexts == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String?),
      unit: l$unit == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      mstrItemLotId: (l$mstrItemLotId as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String mstrItemKindId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds? kinds;

  final String code;

  final String? identification;

  final String? controlCode;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture? manufacture;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels? labels;

  final String? labelCode;

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts? detailTexts;

  final String? sharedUnitId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit? unit;

  final String? mstrItemLotId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$kinds = kinds;
    _resultData['kinds'] = l$kinds?.toJson();
    final l$code = code;
    _resultData['code'] = l$code;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$manufacture = manufacture;
    _resultData['manufacture'] = l$manufacture?.toJson();
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$mstrItemLotId = mstrItemLotId;
    _resultData['mstrItemLotId'] = l$mstrItemLotId;
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
    final l$mstrItemId = mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    final l$kinds = kinds;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$manufacture = manufacture;
    final l$labels = labels;
    final l$labelCode = labelCode;
    final l$detailTexts = detailTexts;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$mstrItemLotId = mstrItemLotId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemKindId,
      l$kinds,
      l$code,
      l$identification,
      l$controlCode,
      l$manufacture,
      l$labels,
      l$labelCode,
      l$detailTexts,
      l$sharedUnitId,
      l$unit,
      l$mstrItemLotId,
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
      return false;
    }
    final l$kinds = kinds;
    final lOther$kinds = other.kinds;
    if (l$kinds != lOther$kinds) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (l$identification != lOther$identification) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$manufacture = manufacture;
    final lOther$manufacture = other.manufacture;
    if (l$manufacture != lOther$manufacture) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
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
    final l$mstrItemLotId = mstrItemLotId;
    final lOther$mstrItemLotId = other.mstrItemLotId;
    if (l$mstrItemLotId != lOther$mstrItemLotId) {
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId
    on Query$ItemPageRfe$mstrItemByMstrItemId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<
    Query$ItemPageRfe$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId(this, (i) => i);
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId(
    Query$ItemPageRfe$mstrItemByMstrItemId instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds? kinds,
    String? code,
    String? identification,
    String? controlCode,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture? manufacture,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels? labels,
    String? labelCode,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts? detailTexts,
    String? sharedUnitId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit? unit,
    String? mstrItemLotId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> get kinds;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes>
  get manufacture;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> get labels;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes>
  get detailTexts;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> get unit;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? kinds = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? manufacture = _undefined,
    Object? labels = _undefined,
    Object? labelCode = _undefined,
    Object? detailTexts = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? mstrItemLotId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      kinds: kinds == _undefined
          ? _instance.kinds
          : (kinds as Query$ItemPageRfe$mstrItemByMstrItemId$kinds?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      manufacture: manufacture == _undefined
          ? _instance.manufacture
          : (manufacture
                as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$ItemPageRfe$mstrItemByMstrItemId$labels?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts?),
      sharedUnitId: sharedUnitId == _undefined
          ? _instance.sharedUnitId
          : (sharedUnitId as String?),
      unit: unit == _undefined
          ? _instance.unit
          : (unit as Query$ItemPageRfe$mstrItemByMstrItemId$unit?),
      mstrItemLotId: mstrItemLotId == _undefined
          ? _instance.mstrItemLotId
          : (mstrItemLotId as String?),
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

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> get kinds {
    final local$kinds = _instance.kinds;
    return local$kinds == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds(
            local$kinds,
            (e) => call(kinds: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes>
  get manufacture {
    final local$manufacture = _instance.manufacture;
    return local$manufacture == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
            local$manufacture,
            (e) => call(manufacture: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes>
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId(this._res);

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds? kinds,
    String? code,
    String? identification,
    String? controlCode,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture? manufacture,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels? labels,
    String? labelCode,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts? detailTexts,
    String? sharedUnitId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit? unit,
    String? mstrItemLotId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> get kinds =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds.stub(_res);

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes>
  get manufacture =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture.stub(_res);

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> get labels =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels.stub(_res);

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes>
  get detailTexts =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts.stub(_res);

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> get unit =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit.stub(_res);
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds({
    required this.mstrItemKindId,
    this.code,
    this.labels,
    this.$__typename = 'MstrItemKind',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      labels: l$labels == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels? labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemKindId, l$code, l$labels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds
    on Query$ItemPageRfe$mstrItemByMstrItemId$kinds {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds(this, (i) => i);
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$kinds) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds;

  TRes call({
    String? mstrItemKindId,
    String? code,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes> get labels;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$kinds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds(this._res);

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes>
  get labels =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels.stub(_res);
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels.fromJson(
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
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels
    on Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels
  >
  get copyWith => CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture({
    required this.mstrManufacturerId,
    this.code,
    this.labels,
    this.remarks,
    this.$__typename = 'MstrManufacturer',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      code: (l$code as String?),
      labels: l$labels == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final String? code;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels? labels;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$code = code;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
      l$code,
      l$labels,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture
    on Query$ItemPageRfe$mstrItemByMstrItemId$manufacture {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture
  >
  get copyWith => CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$manufacture) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture;

  TRes call({
    String? mstrManufacturerId,
    String? code,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels? labels,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<TRes>
  get labels;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$manufacture) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? code,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels? labels,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<TRes>
  get labels =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels.fromJson(
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
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels
    on Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels)
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels.fromJson(
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
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$labels ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels
    on Query$ItemPageRfe$mstrItemByMstrItemId$labels {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels(this, (i) => i);
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$labels) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels(this._res);

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts {
  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en en;

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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts
    on Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts
  >
  get copyWith => CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja? ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en? en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes> get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes> get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes> get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes> get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja? ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en? en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes> get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja.stub(_res);

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes> get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en.stub(_res);
}

class Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?>
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja
    on Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja;

  TRes call({
    List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes
    on Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes)
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?>
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en
    on Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en;

  TRes call({
    List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes
    on Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes)
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels? labels;

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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$unit ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit
    on Query$ItemPageRfe$mstrItemByMstrItemId$unit {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit(this, (i) => i);
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$unit) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit;

  TRes call({
    String? sharedUnitId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes> get labels;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes>
    implements CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit(this._res);

  TRes _res;

  call({
    String? sharedUnitId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes>
  get labels =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels.stub(_res);
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels.fromJson(
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
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels
    on Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels
  >
  get copyWith => CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels instance,
    TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels) then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes> {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels _instance;

  final TRes Function(Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels<TRes> {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemPageRfe$mstrItemByMstrItemId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
