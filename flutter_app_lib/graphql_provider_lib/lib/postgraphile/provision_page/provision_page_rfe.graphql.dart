import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ProvisionPageRfe {
  factory Variables$Query$ProvisionPageRfe({
    required String infoProvisionId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ProvisionPageRfe._({
    r'infoProvisionId': infoProvisionId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ProvisionPageRfe._(this._$data);

  factory Variables$Query$ProvisionPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoProvisionId = data['infoProvisionId'];
    result$data['infoProvisionId'] = (l$infoProvisionId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ProvisionPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoProvisionId => (_$data['infoProvisionId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoProvisionId = infoProvisionId;
    result$data['infoProvisionId'] = l$infoProvisionId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ProvisionPageRfe<Variables$Query$ProvisionPageRfe>
  get copyWith => CopyWith$Variables$Query$ProvisionPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ProvisionPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
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
    final l$infoProvisionId = infoProvisionId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$infoProvisionId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ProvisionPageRfe<TRes> {
  factory CopyWith$Variables$Query$ProvisionPageRfe(
    Variables$Query$ProvisionPageRfe instance,
    TRes Function(Variables$Query$ProvisionPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ProvisionPageRfe;

  factory CopyWith$Variables$Query$ProvisionPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProvisionPageRfe;

  TRes call({
    String? infoProvisionId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ProvisionPageRfe<TRes>
    implements CopyWith$Variables$Query$ProvisionPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ProvisionPageRfe(this._instance, this._then);

  final Variables$Query$ProvisionPageRfe _instance;

  final TRes Function(Variables$Query$ProvisionPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ProvisionPageRfe._({
      ..._instance._$data,
      if (infoProvisionId != _undefined && infoProvisionId != null)
        'infoProvisionId': (infoProvisionId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ProvisionPageRfe<TRes>
    implements CopyWith$Variables$Query$ProvisionPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ProvisionPageRfe(this._res);

  TRes _res;

  call({
    String? infoProvisionId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ProvisionPageRfe {
  Query$ProvisionPageRfe({
    this.infoProvisionByInfoProvisionId,
    this.$__typename = 'Query',
  });

  factory Query$ProvisionPageRfe.fromJson(Map<String, dynamic> json) {
    final l$infoProvisionByInfoProvisionId =
        json['infoProvisionByInfoProvisionId'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe(
      infoProvisionByInfoProvisionId: l$infoProvisionByInfoProvisionId == null
          ? null
          : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId.fromJson(
              (l$infoProvisionByInfoProvisionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId?
  infoProvisionByInfoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    _resultData['infoProvisionByInfoProvisionId'] =
        l$infoProvisionByInfoProvisionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoProvisionByInfoProvisionId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProvisionPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    final lOther$infoProvisionByInfoProvisionId =
        other.infoProvisionByInfoProvisionId;
    if (l$infoProvisionByInfoProvisionId !=
        lOther$infoProvisionByInfoProvisionId) {
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

extension UtilityExtension$Query$ProvisionPageRfe on Query$ProvisionPageRfe {
  CopyWith$Query$ProvisionPageRfe<Query$ProvisionPageRfe> get copyWith =>
      CopyWith$Query$ProvisionPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ProvisionPageRfe<TRes> {
  factory CopyWith$Query$ProvisionPageRfe(
    Query$ProvisionPageRfe instance,
    TRes Function(Query$ProvisionPageRfe) then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe;

  factory CopyWith$Query$ProvisionPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ProvisionPageRfe;

  TRes call({
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes>
  get infoProvisionByInfoProvisionId;
}

class _CopyWithImpl$Query$ProvisionPageRfe<TRes>
    implements CopyWith$Query$ProvisionPageRfe<TRes> {
  _CopyWithImpl$Query$ProvisionPageRfe(this._instance, this._then);

  final Query$ProvisionPageRfe _instance;

  final TRes Function(Query$ProvisionPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionByInfoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe(
      infoProvisionByInfoProvisionId:
          infoProvisionByInfoProvisionId == _undefined
          ? _instance.infoProvisionByInfoProvisionId
          : (infoProvisionByInfoProvisionId
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes>
  get infoProvisionByInfoProvisionId {
    final local$infoProvisionByInfoProvisionId =
        _instance.infoProvisionByInfoProvisionId;
    return local$infoProvisionByInfoProvisionId == null
        ? CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
            local$infoProvisionByInfoProvisionId,
            (e) => call(infoProvisionByInfoProvisionId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe<TRes>
    implements CopyWith$Query$ProvisionPageRfe<TRes> {
  _CopyWithStubImpl$Query$ProvisionPageRfe(this._res);

  TRes _res;

  call({
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes>
  get infoProvisionByInfoProvisionId =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId.stub(_res);
}

const documentNodeQueryProvisionPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ProvisionPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoProvisionId')),
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
            name: NameNode(value: 'infoProvisionByInfoProvisionId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoProvisionId'),
                value: VariableNode(name: NameNode(value: 'infoProvisionId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoProvisionId'),
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
                  name: NameNode(value: 'details'),
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
Query$ProvisionPageRfe _parserFn$Query$ProvisionPageRfe(
  Map<String, dynamic> data,
) => Query$ProvisionPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ProvisionPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ProvisionPageRfe?);

class Options$Query$ProvisionPageRfe
    extends graphql.QueryOptions<Query$ProvisionPageRfe> {
  Options$Query$ProvisionPageRfe({
    String? operationName,
    required Variables$Query$ProvisionPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProvisionPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProvisionPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ProvisionPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryProvisionPageRfe,
         parserFn: _parserFn$Query$ProvisionPageRfe,
       );

  final OnQueryComplete$Query$ProvisionPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ProvisionPageRfe
    extends graphql.WatchQueryOptions<Query$ProvisionPageRfe> {
  WatchOptions$Query$ProvisionPageRfe({
    String? operationName,
    required Variables$Query$ProvisionPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProvisionPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryProvisionPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ProvisionPageRfe,
       );
}

class FetchMoreOptions$Query$ProvisionPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProvisionPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ProvisionPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryProvisionPageRfe,
       );
}

extension ClientExtension$Query$ProvisionPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProvisionPageRfe>> query$ProvisionPageRfe(
    Options$Query$ProvisionPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ProvisionPageRfe> watchQuery$ProvisionPageRfe(
    WatchOptions$Query$ProvisionPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ProvisionPageRfe({
    required Query$ProvisionPageRfe data,
    required Variables$Query$ProvisionPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryProvisionPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ProvisionPageRfe? readQuery$ProvisionPageRfe({
    required Variables$Query$ProvisionPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryProvisionPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProvisionPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ProvisionPageRfe>
useQuery$ProvisionPageRfe(Options$Query$ProvisionPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ProvisionPageRfe> useWatchQuery$ProvisionPageRfe(
  WatchOptions$Query$ProvisionPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ProvisionPageRfe$Widget
    extends graphql_flutter.Query<Query$ProvisionPageRfe> {
  Query$ProvisionPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ProvisionPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ProvisionPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId({
    required this.infoProvisionId,
    required this.infoCompanyId,
    required this.code,
    this.details,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.$__typename = 'InfoProvision',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoProvisionId = json['infoProvisionId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$details = json['details'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
      infoProvisionId: (l$infoProvisionId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      details: (l$details as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoProvisionId;

  final String infoCompanyId;

  final String code;

  final String? details;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels? labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoProvisionId = infoProvisionId;
    _resultData['infoProvisionId'] = l$infoProvisionId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$details = details;
    _resultData['details'] = l$details;
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
    final l$infoProvisionId = infoProvisionId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$details = details;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoProvisionId,
      l$infoCompanyId,
      l$code,
      l$details,
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
    if (other is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
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
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId
    on Query$ProvisionPageRfe$infoProvisionByInfoProvisionId {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId instance,
    TRes Function(Query$ProvisionPageRfe$infoProvisionByInfoProvisionId) then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId;

  TRes call({
    String? infoProvisionId,
    String? infoCompanyId,
    String? code,
    String? details,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<TRes>
  get labels;
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes> {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId _instance;

  final TRes Function(Query$ProvisionPageRfe$infoProvisionByInfoProvisionId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? details = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      details: details == _undefined ? _instance.details : (details as String?),
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
          : (labels
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId<TRes> {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId(
    this._res,
  );

  TRes _res;

  call({
    String? infoProvisionId,
    String? infoCompanyId,
    String? code,
    String? details,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<TRes>
  get labels =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels.stub(
        _res,
      );
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels.fromJson(
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
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels
    on Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels instance,
    TRes Function(Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels)
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels,
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
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ProvisionPageRfe$infoProvisionByInfoProvisionId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
