import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemTreePageRfe {
  factory Variables$Query$ItemTreePageRfe({
    required String mstrItemTreeId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ItemTreePageRfe._({
    r'mstrItemTreeId': mstrItemTreeId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ItemTreePageRfe._(this._$data);

  factory Variables$Query$ItemTreePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrItemTreeId = data['mstrItemTreeId'];
    result$data['mstrItemTreeId'] = (l$mstrItemTreeId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ItemTreePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemTreeId => (_$data['mstrItemTreeId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemTreeId = mstrItemTreeId;
    result$data['mstrItemTreeId'] = l$mstrItemTreeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemTreePageRfe<Variables$Query$ItemTreePageRfe>
  get copyWith => CopyWith$Variables$Query$ItemTreePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTreeId = mstrItemTreeId;
    final lOther$mstrItemTreeId = other.mstrItemTreeId;
    if (l$mstrItemTreeId != lOther$mstrItemTreeId) {
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
    final l$mstrItemTreeId = mstrItemTreeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrItemTreeId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ItemTreePageRfe<TRes> {
  factory CopyWith$Variables$Query$ItemTreePageRfe(
    Variables$Query$ItemTreePageRfe instance,
    TRes Function(Variables$Query$ItemTreePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ItemTreePageRfe;

  factory CopyWith$Variables$Query$ItemTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemTreePageRfe;

  TRes call({
    String? mstrItemTreeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ItemTreePageRfe<TRes>
    implements CopyWith$Variables$Query$ItemTreePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ItemTreePageRfe(this._instance, this._then);

  final Variables$Query$ItemTreePageRfe _instance;

  final TRes Function(Variables$Query$ItemTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTreeId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ItemTreePageRfe._({
      ..._instance._$data,
      if (mstrItemTreeId != _undefined && mstrItemTreeId != null)
        'mstrItemTreeId': (mstrItemTreeId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemTreePageRfe<TRes>
    implements CopyWith$Variables$Query$ItemTreePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemTreePageRfe(this._res);

  TRes _res;

  call({
    String? mstrItemTreeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ItemTreePageRfe {
  Query$ItemTreePageRfe({
    this.mstrItemTreeByMstrItemTreeId,
    this.$__typename = 'Query',
  });

  factory Query$ItemTreePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrItemTreeByMstrItemTreeId = json['mstrItemTreeByMstrItemTreeId'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe(
      mstrItemTreeByMstrItemTreeId: l$mstrItemTreeByMstrItemTreeId == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId.fromJson(
              (l$mstrItemTreeByMstrItemTreeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId?
  mstrItemTreeByMstrItemTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemTreeByMstrItemTreeId = mstrItemTreeByMstrItemTreeId;
    _resultData['mstrItemTreeByMstrItemTreeId'] = l$mstrItemTreeByMstrItemTreeId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemTreeByMstrItemTreeId = mstrItemTreeByMstrItemTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemTreeByMstrItemTreeId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemTreePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTreeByMstrItemTreeId = mstrItemTreeByMstrItemTreeId;
    final lOther$mstrItemTreeByMstrItemTreeId =
        other.mstrItemTreeByMstrItemTreeId;
    if (l$mstrItemTreeByMstrItemTreeId != lOther$mstrItemTreeByMstrItemTreeId) {
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

extension UtilityExtension$Query$ItemTreePageRfe on Query$ItemTreePageRfe {
  CopyWith$Query$ItemTreePageRfe<Query$ItemTreePageRfe> get copyWith =>
      CopyWith$Query$ItemTreePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ItemTreePageRfe<TRes> {
  factory CopyWith$Query$ItemTreePageRfe(
    Query$ItemTreePageRfe instance,
    TRes Function(Query$ItemTreePageRfe) then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe;

  factory CopyWith$Query$ItemTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemTreePageRfe;

  TRes call({
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId?
    mstrItemTreeByMstrItemTreeId,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes>
  get mstrItemTreeByMstrItemTreeId;
}

class _CopyWithImpl$Query$ItemTreePageRfe<TRes>
    implements CopyWith$Query$ItemTreePageRfe<TRes> {
  _CopyWithImpl$Query$ItemTreePageRfe(this._instance, this._then);

  final Query$ItemTreePageRfe _instance;

  final TRes Function(Query$ItemTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTreeByMstrItemTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe(
      mstrItemTreeByMstrItemTreeId: mstrItemTreeByMstrItemTreeId == _undefined
          ? _instance.mstrItemTreeByMstrItemTreeId
          : (mstrItemTreeByMstrItemTreeId
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes>
  get mstrItemTreeByMstrItemTreeId {
    final local$mstrItemTreeByMstrItemTreeId =
        _instance.mstrItemTreeByMstrItemTreeId;
    return local$mstrItemTreeByMstrItemTreeId == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
            local$mstrItemTreeByMstrItemTreeId,
            (e) => call(mstrItemTreeByMstrItemTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe<TRes>
    implements CopyWith$Query$ItemTreePageRfe<TRes> {
  _CopyWithStubImpl$Query$ItemTreePageRfe(this._res);

  TRes _res;

  call({
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId?
    mstrItemTreeByMstrItemTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes>
  get mstrItemTreeByMstrItemTreeId =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId.stub(_res);
}

const documentNodeQueryItemTreePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemTreePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemTreeId')),
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
            name: NameNode(value: 'mstrItemTreeByMstrItemTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrItemTreeId'),
                value: VariableNode(name: NameNode(value: 'mstrItemTreeId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrItemTreeId'),
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
                  name: NameNode(value: 'parentMstrItemId'),
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
                  name: NameNode(value: 'controlCode'),
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
                  name: NameNode(value: 'quantity'),
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
Query$ItemTreePageRfe _parserFn$Query$ItemTreePageRfe(
  Map<String, dynamic> data,
) => Query$ItemTreePageRfe.fromJson(data);
typedef OnQueryComplete$Query$ItemTreePageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemTreePageRfe?);

class Options$Query$ItemTreePageRfe
    extends graphql.QueryOptions<Query$ItemTreePageRfe> {
  Options$Query$ItemTreePageRfe({
    String? operationName,
    required Variables$Query$ItemTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemTreePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemTreePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemTreePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryItemTreePageRfe,
         parserFn: _parserFn$Query$ItemTreePageRfe,
       );

  final OnQueryComplete$Query$ItemTreePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemTreePageRfe
    extends graphql.WatchQueryOptions<Query$ItemTreePageRfe> {
  WatchOptions$Query$ItemTreePageRfe({
    String? operationName,
    required Variables$Query$ItemTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemTreePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryItemTreePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemTreePageRfe,
       );
}

class FetchMoreOptions$Query$ItemTreePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemTreePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemTreePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemTreePageRfe,
       );
}

extension ClientExtension$Query$ItemTreePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemTreePageRfe>> query$ItemTreePageRfe(
    Options$Query$ItemTreePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemTreePageRfe> watchQuery$ItemTreePageRfe(
    WatchOptions$Query$ItemTreePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ItemTreePageRfe({
    required Query$ItemTreePageRfe data,
    required Variables$Query$ItemTreePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemTreePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemTreePageRfe? readQuery$ItemTreePageRfe({
    required Variables$Query$ItemTreePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemTreePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemTreePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemTreePageRfe> useQuery$ItemTreePageRfe(
  Options$Query$ItemTreePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemTreePageRfe> useWatchQuery$ItemTreePageRfe(
  WatchOptions$Query$ItemTreePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemTreePageRfe$Widget
    extends graphql_flutter.Query<Query$ItemTreePageRfe> {
  Query$ItemTreePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ItemTreePageRfe options,
    required graphql_flutter.QueryBuilder<Query$ItemTreePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId({
    required this.mstrItemTreeId,
    required this.mstrItemId,
    this.parentMstrItemId,
    this.code,
    this.controlCode,
    this.labels,
    required this.quantity,
    this.detailTexts,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrItemTree',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemTreeId = json['mstrItemTreeId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$parentMstrItemId = json['parentMstrItemId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labels = json['labels'];
    final l$quantity = json['quantity'];
    final l$detailTexts = json['detailTexts'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
      mstrItemTreeId: (l$mstrItemTreeId as String),
      mstrItemId: (l$mstrItemId as String),
      parentMstrItemId: (l$parentMstrItemId as String?),
      code: (l$code as String?),
      controlCode: (l$controlCode as String?),
      labels: l$labels == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      quantity: (l$quantity as String),
      detailTexts: l$detailTexts == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemTreeId;

  final String mstrItemId;

  final String? parentMstrItemId;

  final String? code;

  final String? controlCode;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels? labels;

  final String quantity;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts?
  detailTexts;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemTreeId = mstrItemTreeId;
    _resultData['mstrItemTreeId'] = l$mstrItemTreeId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$parentMstrItemId = parentMstrItemId;
    _resultData['parentMstrItemId'] = l$parentMstrItemId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
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
    final l$mstrItemTreeId = mstrItemTreeId;
    final l$mstrItemId = mstrItemId;
    final l$parentMstrItemId = parentMstrItemId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labels = labels;
    final l$quantity = quantity;
    final l$detailTexts = detailTexts;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemTreeId,
      l$mstrItemId,
      l$parentMstrItemId,
      l$code,
      l$controlCode,
      l$labels,
      l$quantity,
      l$detailTexts,
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
    if (other is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTreeId = mstrItemTreeId;
    final lOther$mstrItemTreeId = other.mstrItemTreeId;
    if (l$mstrItemTreeId != lOther$mstrItemTreeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$parentMstrItemId = parentMstrItemId;
    final lOther$parentMstrItemId = other.parentMstrItemId;
    if (l$parentMstrItemId != lOther$parentMstrItemId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId
  >
  get copyWith => CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId instance,
    TRes Function(Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId) then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId;

  TRes call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels? labels,
    String? quantity,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts? detailTexts,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<TRes>
  get labels;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<TRes>
  get detailTexts;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes> {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId _instance;

  final TRes Function(Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTreeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? parentMstrItemId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labels = _undefined,
    Object? quantity = _undefined,
    Object? detailTexts = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
      mstrItemTreeId: mstrItemTreeId == _undefined || mstrItemTreeId == null
          ? _instance.mstrItemTreeId
          : (mstrItemTreeId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      parentMstrItemId: parentMstrItemId == _undefined
          ? _instance.parentMstrItemId
          : (parentMstrItemId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels?),
      quantity: quantity == _undefined || quantity == null
          ? _instance.quantity
          : (quantity as String),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts?),
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

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<TRes>
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId<TRes> {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels? labels,
    String? quantity,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts? detailTexts,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<TRes>
  get labels =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<TRes>
  get detailTexts =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels.fromJson(
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
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels instance,
    TRes Function(Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels)
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels _instance;

  final TRes Function(Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja ja;

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en en;

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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja? ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en? en,
    String? $__typename,
  });
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja? ja,
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en? en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en.stub(
        _res,
      );
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en;

  TRes call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
          Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes {
  Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
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
            is! Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes ||
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

extension UtilityExtension$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
    on Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes {
  CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
    instance,
    TRes Function(
      Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes;

  factory CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemTreePageRfe$mstrItemTreeByMstrItemTreeId$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}
