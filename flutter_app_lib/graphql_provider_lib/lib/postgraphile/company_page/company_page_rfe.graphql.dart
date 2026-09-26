import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CompanyPageRfe {
  factory Variables$Query$CompanyPageRfe({
    required String infoCompanyId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$CompanyPageRfe._({
    r'infoCompanyId': infoCompanyId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$CompanyPageRfe._(this._$data);

  factory Variables$Query$CompanyPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = data['infoCompanyId'];
    result$data['infoCompanyId'] = (l$infoCompanyId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$CompanyPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    result$data['infoCompanyId'] = l$infoCompanyId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$CompanyPageRfe<Variables$Query$CompanyPageRfe>
  get copyWith => CopyWith$Variables$Query$CompanyPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CompanyPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
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
    final l$infoCompanyId = infoCompanyId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$infoCompanyId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$CompanyPageRfe<TRes> {
  factory CopyWith$Variables$Query$CompanyPageRfe(
    Variables$Query$CompanyPageRfe instance,
    TRes Function(Variables$Query$CompanyPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$CompanyPageRfe;

  factory CopyWith$Variables$Query$CompanyPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CompanyPageRfe;

  TRes call({
    String? infoCompanyId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$CompanyPageRfe<TRes>
    implements CopyWith$Variables$Query$CompanyPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$CompanyPageRfe(this._instance, this._then);

  final Variables$Query$CompanyPageRfe _instance;

  final TRes Function(Variables$Query$CompanyPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$CompanyPageRfe._({
      ..._instance._$data,
      if (infoCompanyId != _undefined && infoCompanyId != null)
        'infoCompanyId': (infoCompanyId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CompanyPageRfe<TRes>
    implements CopyWith$Variables$Query$CompanyPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$CompanyPageRfe(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$CompanyPageRfe {
  Query$CompanyPageRfe({
    this.infoCompanyByInfoCompanyId,
    this.$__typename = 'Query',
  });

  factory Query$CompanyPageRfe.fromJson(Map<String, dynamic> json) {
    final l$infoCompanyByInfoCompanyId = json['infoCompanyByInfoCompanyId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe(
      infoCompanyByInfoCompanyId: l$infoCompanyByInfoCompanyId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId.fromJson(
              (l$infoCompanyByInfoCompanyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId?
  infoCompanyByInfoCompanyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyByInfoCompanyId = infoCompanyByInfoCompanyId;
    _resultData['infoCompanyByInfoCompanyId'] = l$infoCompanyByInfoCompanyId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyByInfoCompanyId = infoCompanyByInfoCompanyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoCompanyByInfoCompanyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyByInfoCompanyId = infoCompanyByInfoCompanyId;
    final lOther$infoCompanyByInfoCompanyId = other.infoCompanyByInfoCompanyId;
    if (l$infoCompanyByInfoCompanyId != lOther$infoCompanyByInfoCompanyId) {
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

extension UtilityExtension$Query$CompanyPageRfe on Query$CompanyPageRfe {
  CopyWith$Query$CompanyPageRfe<Query$CompanyPageRfe> get copyWith =>
      CopyWith$Query$CompanyPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$CompanyPageRfe<TRes> {
  factory CopyWith$Query$CompanyPageRfe(
    Query$CompanyPageRfe instance,
    TRes Function(Query$CompanyPageRfe) then,
  ) = _CopyWithImpl$Query$CompanyPageRfe;

  factory CopyWith$Query$CompanyPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyPageRfe;

  TRes call({
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId? infoCompanyByInfoCompanyId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId;
}

class _CopyWithImpl$Query$CompanyPageRfe<TRes>
    implements CopyWith$Query$CompanyPageRfe<TRes> {
  _CopyWithImpl$Query$CompanyPageRfe(this._instance, this._then);

  final Query$CompanyPageRfe _instance;

  final TRes Function(Query$CompanyPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyByInfoCompanyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe(
      infoCompanyByInfoCompanyId: infoCompanyByInfoCompanyId == _undefined
          ? _instance.infoCompanyByInfoCompanyId
          : (infoCompanyByInfoCompanyId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId {
    final local$infoCompanyByInfoCompanyId =
        _instance.infoCompanyByInfoCompanyId;
    return local$infoCompanyByInfoCompanyId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId(
            local$infoCompanyByInfoCompanyId,
            (e) => call(infoCompanyByInfoCompanyId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe<TRes>
    implements CopyWith$Query$CompanyPageRfe<TRes> {
  _CopyWithStubImpl$Query$CompanyPageRfe(this._res);

  TRes _res;

  call({
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId? infoCompanyByInfoCompanyId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId.stub(_res);
}

const documentNodeQueryCompanyPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CompanyPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoCompanyId')),
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
            name: NameNode(value: 'infoCompanyByInfoCompanyId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoCompanyId'),
                value: VariableNode(name: NameNode(value: 'infoCompanyId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoCompanyId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'webPage'),
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
                  name: NameNode(
                    value: 'sharedAppellationBySharedAppellationsId',
                  ),
                  alias: null,
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
                  name: NameNode(value: 'sharedAppellationByCeo'),
                  alias: NameNode(value: 'ceo'),
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
                  name: NameNode(value: 'infoAddressByInfoAddressId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoAddressId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'iso31663'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'zipCode'),
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
                        name: NameNode(value: 'faxNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedAppellationByAddress1'),
                        alias: NameNode(value: 'address1'),
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
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
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
                        name: NameNode(value: 'sharedAppellationByAddress2'),
                        alias: NameNode(value: 'address2'),
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
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
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
                        name: NameNode(value: 'sharedAppellationByBill'),
                        alias: NameNode(value: 'billName'),
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
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
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
Query$CompanyPageRfe _parserFn$Query$CompanyPageRfe(
  Map<String, dynamic> data,
) => Query$CompanyPageRfe.fromJson(data);
typedef OnQueryComplete$Query$CompanyPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CompanyPageRfe?);

class Options$Query$CompanyPageRfe
    extends graphql.QueryOptions<Query$CompanyPageRfe> {
  Options$Query$CompanyPageRfe({
    String? operationName,
    required Variables$Query$CompanyPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CompanyPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$CompanyPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryCompanyPageRfe,
         parserFn: _parserFn$Query$CompanyPageRfe,
       );

  final OnQueryComplete$Query$CompanyPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CompanyPageRfe
    extends graphql.WatchQueryOptions<Query$CompanyPageRfe> {
  WatchOptions$Query$CompanyPageRfe({
    String? operationName,
    required Variables$Query$CompanyPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryCompanyPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CompanyPageRfe,
       );
}

class FetchMoreOptions$Query$CompanyPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CompanyPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CompanyPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryCompanyPageRfe,
       );
}

extension ClientExtension$Query$CompanyPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CompanyPageRfe>> query$CompanyPageRfe(
    Options$Query$CompanyPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$CompanyPageRfe> watchQuery$CompanyPageRfe(
    WatchOptions$Query$CompanyPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$CompanyPageRfe({
    required Query$CompanyPageRfe data,
    required Variables$Query$CompanyPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryCompanyPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CompanyPageRfe? readQuery$CompanyPageRfe({
    required Variables$Query$CompanyPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCompanyPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CompanyPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CompanyPageRfe> useQuery$CompanyPageRfe(
  Options$Query$CompanyPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CompanyPageRfe> useWatchQuery$CompanyPageRfe(
  WatchOptions$Query$CompanyPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$CompanyPageRfe$Widget
    extends graphql_flutter.Query<Query$CompanyPageRfe> {
  Query$CompanyPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$CompanyPageRfe options,
    required graphql_flutter.QueryBuilder<Query$CompanyPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId({
    required this.infoCompanyId,
    this.webPage,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.ceo,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'InfoCompany',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompanyId = json['infoCompanyId'];
    final l$webPage = json['webPage'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$ceo = json['ceo'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      ceo: l$ceo == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo.fromJson(
              (l$ceo as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoCompanyId;

  final String? webPage;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo? ceo;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$webPage = webPage;
    _resultData['webPage'] = l$webPage;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$ceo = ceo;
    _resultData['ceo'] = l$ceo?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$ceo = ceo;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$ceo,
      l$infoAddressByInfoAddressId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$webPage = webPage;
    final lOther$webPage = other.webPage;
    if (l$webPage != lOther$webPage) {
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final lOther$sharedAppellationBySharedAppellationsId =
        other.sharedAppellationBySharedAppellationsId;
    if (l$sharedAppellationBySharedAppellationsId !=
        lOther$sharedAppellationBySharedAppellationsId) {
      return false;
    }
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (l$ceo != lOther$ceo) {
      return false;
    }
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final lOther$infoAddressByInfoAddressId = other.infoAddressByInfoAddressId;
    if (l$infoAddressByInfoAddressId != lOther$infoAddressByInfoAddressId) {
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId
    on Query$CompanyPageRfe$infoCompanyByInfoCompanyId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId(this, (i) => i);
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId instance,
    TRes Function(Query$CompanyPageRfe$infoCompanyByInfoCompanyId) then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? symbol,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo? ceo,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes> get ceo;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes>
    implements CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes> {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId _instance;

  final TRes Function(Query$CompanyPageRfe$infoCompanyByInfoCompanyId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? ceo = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId(
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      webPage: webPage == _undefined ? _instance.webPage : (webPage as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
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
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?),
      ceo: ceo == _undefined
          ? _instance.ceo
          : (ceo as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes> get ceo {
    final local$ceo = _instance.ceo;
    return local$ceo == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
            local$ceo,
            (e) => call(ceo: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes>
    implements CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId<TRes> {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? symbol,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo? ceo,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes> get ceo =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo.stub(_res);

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId,
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
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo.fromJson(
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
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo
    on Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo
  >
  get copyWith => CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo instance,
    TRes Function(Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo) then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes> {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo _instance;

  final TRes Function(Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo<TRes> {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$ceo$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.phone,
    this.faxNumber,
    this.address1,
    this.address2,
    this.billName,
    this.$__typename = 'InfoAddress',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$billName = json['billName'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      address1: l$address1 == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      billName: l$billName == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName.fromJson(
              (l$billName as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final String? phone;

  final String? faxNumber;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1?
  address1;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2?
  address2;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName?
  billName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31663 = iso31663;
    _resultData['iso31663'] = l$iso31663;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$address1 = address1;
    _resultData['address1'] = l$address1?.toJson();
    final l$address2 = address2;
    _resultData['address2'] = l$address2?.toJson();
    final l$billName = billName;
    _resultData['billName'] = l$billName?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$billName = billName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$phone,
      l$faxNumber,
      l$address1,
      l$address2,
      l$billName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31663 = iso31663;
    final lOther$iso31663 = other.iso31663;
    if (l$iso31663 != lOther$iso31663) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (l$faxNumber != lOther$faxNumber) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$billName = billName;
    final lOther$billName = other.billName;
    if (l$billName != lOther$billName) {
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
    on Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1?
    address1,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2?
    address2,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName?
    billName,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
    TRes
  >
  get address1;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
    TRes
  >
  get address2;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
    TRes
  >
  get billName;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? billName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31663: iso31663 == _undefined
          ? _instance.iso31663
          : (iso31663 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2?),
      billName: billName == _undefined
          ? _instance.billName
          : (billName
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
    TRes
  >
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
    TRes
  >
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
    TRes
  >
  get billName {
    final local$billName = _instance.billName;
    return local$billName == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
            local$billName,
            (e) => call(billName: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1?
    address1,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2?
    address2,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName?
    billName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
    TRes
  >
  get address1 =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
    TRes
  >
  get address2 =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
    TRes
  >
  get billName =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1 {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1.fromJson(
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
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1 ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1 {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1,
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
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2 {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2.fromJson(
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
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2 ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2 {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2,
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
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName.fromJson(
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
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName,
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
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyPageRfe$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
