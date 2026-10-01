import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OfficePageRfe {
  factory Variables$Query$OfficePageRfe({
    required String infoOfficeId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$OfficePageRfe._({
    r'infoOfficeId': infoOfficeId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$OfficePageRfe._(this._$data);

  factory Variables$Query$OfficePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoOfficeId = data['infoOfficeId'];
    result$data['infoOfficeId'] = (l$infoOfficeId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$OfficePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoOfficeId => (_$data['infoOfficeId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    result$data['infoOfficeId'] = l$infoOfficeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$OfficePageRfe<Variables$Query$OfficePageRfe>
  get copyWith => CopyWith$Variables$Query$OfficePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OfficePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
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
    final l$infoOfficeId = infoOfficeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$infoOfficeId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$OfficePageRfe<TRes> {
  factory CopyWith$Variables$Query$OfficePageRfe(
    Variables$Query$OfficePageRfe instance,
    TRes Function(Variables$Query$OfficePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$OfficePageRfe;

  factory CopyWith$Variables$Query$OfficePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OfficePageRfe;

  TRes call({
    String? infoOfficeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$OfficePageRfe<TRes>
    implements CopyWith$Variables$Query$OfficePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$OfficePageRfe(this._instance, this._then);

  final Variables$Query$OfficePageRfe _instance;

  final TRes Function(Variables$Query$OfficePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$OfficePageRfe._({
      ..._instance._$data,
      if (infoOfficeId != _undefined && infoOfficeId != null)
        'infoOfficeId': (infoOfficeId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OfficePageRfe<TRes>
    implements CopyWith$Variables$Query$OfficePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$OfficePageRfe(this._res);

  TRes _res;

  call({
    String? infoOfficeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$OfficePageRfe {
  Query$OfficePageRfe({
    this.infoOfficeByInfoOfficeId,
    this.$__typename = 'Query',
  });

  factory Query$OfficePageRfe.fromJson(Map<String, dynamic> json) {
    final l$infoOfficeByInfoOfficeId = json['infoOfficeByInfoOfficeId'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe(
      infoOfficeByInfoOfficeId: l$infoOfficeByInfoOfficeId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId.fromJson(
              (l$infoOfficeByInfoOfficeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId? infoOfficeByInfoOfficeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeByInfoOfficeId = infoOfficeByInfoOfficeId;
    _resultData['infoOfficeByInfoOfficeId'] = l$infoOfficeByInfoOfficeId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeByInfoOfficeId = infoOfficeByInfoOfficeId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoOfficeByInfoOfficeId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OfficePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeByInfoOfficeId = infoOfficeByInfoOfficeId;
    final lOther$infoOfficeByInfoOfficeId = other.infoOfficeByInfoOfficeId;
    if (l$infoOfficeByInfoOfficeId != lOther$infoOfficeByInfoOfficeId) {
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

extension UtilityExtension$Query$OfficePageRfe on Query$OfficePageRfe {
  CopyWith$Query$OfficePageRfe<Query$OfficePageRfe> get copyWith =>
      CopyWith$Query$OfficePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRfe<TRes> {
  factory CopyWith$Query$OfficePageRfe(
    Query$OfficePageRfe instance,
    TRes Function(Query$OfficePageRfe) then,
  ) = _CopyWithImpl$Query$OfficePageRfe;

  factory CopyWith$Query$OfficePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRfe;

  TRes call({
    Query$OfficePageRfe$infoOfficeByInfoOfficeId? infoOfficeByInfoOfficeId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes>
  get infoOfficeByInfoOfficeId;
}

class _CopyWithImpl$Query$OfficePageRfe<TRes>
    implements CopyWith$Query$OfficePageRfe<TRes> {
  _CopyWithImpl$Query$OfficePageRfe(this._instance, this._then);

  final Query$OfficePageRfe _instance;

  final TRes Function(Query$OfficePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeByInfoOfficeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe(
      infoOfficeByInfoOfficeId: infoOfficeByInfoOfficeId == _undefined
          ? _instance.infoOfficeByInfoOfficeId
          : (infoOfficeByInfoOfficeId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes>
  get infoOfficeByInfoOfficeId {
    final local$infoOfficeByInfoOfficeId = _instance.infoOfficeByInfoOfficeId;
    return local$infoOfficeByInfoOfficeId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId(
            local$infoOfficeByInfoOfficeId,
            (e) => call(infoOfficeByInfoOfficeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe<TRes>
    implements CopyWith$Query$OfficePageRfe<TRes> {
  _CopyWithStubImpl$Query$OfficePageRfe(this._res);

  TRes _res;

  call({
    Query$OfficePageRfe$infoOfficeByInfoOfficeId? infoOfficeByInfoOfficeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes>
  get infoOfficeByInfoOfficeId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId.stub(_res);
}

const documentNodeQueryOfficePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OfficePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoOfficeId')),
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
            name: NameNode(value: 'infoOfficeByInfoOfficeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoOfficeId'),
                value: VariableNode(name: NameNode(value: 'infoOfficeId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoOfficeId'),
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
                  name: NameNode(value: 'infoAddressByInfoAddressId'),
                  alias: NameNode(value: 'address'),
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
Query$OfficePageRfe _parserFn$Query$OfficePageRfe(Map<String, dynamic> data) =>
    Query$OfficePageRfe.fromJson(data);
typedef OnQueryComplete$Query$OfficePageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OfficePageRfe?);

class Options$Query$OfficePageRfe
    extends graphql.QueryOptions<Query$OfficePageRfe> {
  Options$Query$OfficePageRfe({
    String? operationName,
    required Variables$Query$OfficePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OfficePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OfficePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$OfficePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryOfficePageRfe,
         parserFn: _parserFn$Query$OfficePageRfe,
       );

  final OnQueryComplete$Query$OfficePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OfficePageRfe
    extends graphql.WatchQueryOptions<Query$OfficePageRfe> {
  WatchOptions$Query$OfficePageRfe({
    String? operationName,
    required Variables$Query$OfficePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OfficePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryOfficePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OfficePageRfe,
       );
}

class FetchMoreOptions$Query$OfficePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OfficePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OfficePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOfficePageRfe,
       );
}

extension ClientExtension$Query$OfficePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OfficePageRfe>> query$OfficePageRfe(
    Options$Query$OfficePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OfficePageRfe> watchQuery$OfficePageRfe(
    WatchOptions$Query$OfficePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$OfficePageRfe({
    required Query$OfficePageRfe data,
    required Variables$Query$OfficePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOfficePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OfficePageRfe? readQuery$OfficePageRfe({
    required Variables$Query$OfficePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOfficePageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OfficePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OfficePageRfe> useQuery$OfficePageRfe(
  Options$Query$OfficePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OfficePageRfe> useWatchQuery$OfficePageRfe(
  WatchOptions$Query$OfficePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$OfficePageRfe$Widget
    extends graphql_flutter.Query<Query$OfficePageRfe> {
  Query$OfficePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$OfficePageRfe options,
    required graphql_flutter.QueryBuilder<Query$OfficePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId({
    required this.infoOfficeId,
    required this.infoCompanyId,
    required this.code,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.address,
    this.$__typename = 'InfoOffice',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId(
      infoOfficeId: (l$infoOfficeId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      address: l$address == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoOfficeId;

  final String infoCompanyId;

  final String code;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels? labels;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address? address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
      l$infoCompanyId,
      l$code,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$labels,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OfficePageRfe$infoOfficeByInfoOfficeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId) then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId;

  TRes call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels? labels,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address? address,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes> get labels;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes>
  get address;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes>
    implements CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes> {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId _instance;

  final TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
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
          : (labels as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels?),
      address: address == _undefined
          ? _instance.address
          : (address as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes>
  get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
            local$address,
            (e) => call(address: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes>
    implements CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId<TRes> {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId(this._res);

  TRes _res;

  call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels? labels,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address? address,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes>
  get labels =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels.stub(_res);

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes>
  get address =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address.stub(_res);
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels.fromJson(
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
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels
  >
  get copyWith => CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels) then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes> {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels _instance;

  final TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels<TRes> {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address({
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

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address.fromJson(
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
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      address1: l$address1 == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      billName: l$billName == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName.fromJson(
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

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1? address1;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2? address2;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName? billName;

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
    if (other is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId$address {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address
  >
  get copyWith => CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$address) then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1? address1,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2? address2,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName? billName,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<TRes>
  get address1;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<TRes>
  get address2;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<TRes>
  get billName;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes> {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address _instance;

  final TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$address)
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
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
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
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2?),
      billName: billName == _undefined
          ? _instance.billName
          : (billName
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<TRes>
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<TRes>
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<TRes>
  get billName {
    final local$billName = _instance.billName;
    return local$billName == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
            local$billName,
            (e) => call(billName: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address<TRes> {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1? address1,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2? address2,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName? billName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<TRes>
  get address1 =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<TRes>
  get address2 =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<TRes>
  get billName =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1 {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1.fromJson(
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
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1 ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1 {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1 instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1)
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1 _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1,
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
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2 {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2.fromJson(
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
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2 ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2 {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2 instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2)
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2 _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2,
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
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName.fromJson(
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
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName
    on Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName instance,
    TRes Function(Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName)
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName,
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
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRfe$infoOfficeByInfoOfficeId$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
