import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ApprovalOperationPageRfe {
  factory Variables$Query$ApprovalOperationPageRfe({
    required String mstrApprovalPatternId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ApprovalOperationPageRfe._({
    r'mstrApprovalPatternId': mstrApprovalPatternId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ApprovalOperationPageRfe._(this._$data);

  factory Variables$Query$ApprovalOperationPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrApprovalPatternId = data['mstrApprovalPatternId'];
    result$data['mstrApprovalPatternId'] = (l$mstrApprovalPatternId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ApprovalOperationPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrApprovalPatternId =>
      (_$data['mstrApprovalPatternId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    result$data['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ApprovalOperationPageRfe<
    Variables$Query$ApprovalOperationPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$ApprovalOperationPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ApprovalOperationPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrApprovalPatternId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ApprovalOperationPageRfe<TRes> {
  factory CopyWith$Variables$Query$ApprovalOperationPageRfe(
    Variables$Query$ApprovalOperationPageRfe instance,
    TRes Function(Variables$Query$ApprovalOperationPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ApprovalOperationPageRfe;

  factory CopyWith$Variables$Query$ApprovalOperationPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRfe;

  TRes call({
    String? mstrApprovalPatternId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ApprovalOperationPageRfe<TRes>
    implements CopyWith$Variables$Query$ApprovalOperationPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ApprovalOperationPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$ApprovalOperationPageRfe _instance;

  final TRes Function(Variables$Query$ApprovalOperationPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ApprovalOperationPageRfe._({
      ..._instance._$data,
      if (mstrApprovalPatternId != _undefined && mstrApprovalPatternId != null)
        'mstrApprovalPatternId': (mstrApprovalPatternId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRfe<TRes>
    implements CopyWith$Variables$Query$ApprovalOperationPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRfe(this._res);

  TRes _res;

  call({
    String? mstrApprovalPatternId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ApprovalOperationPageRfe {
  Query$ApprovalOperationPageRfe({
    this.mstrApprovalPatternByMstrApprovalPatternId,
    this.$__typename = 'Query',
  });

  factory Query$ApprovalOperationPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrApprovalPatternByMstrApprovalPatternId =
        json['mstrApprovalPatternByMstrApprovalPatternId'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe(
      mstrApprovalPatternByMstrApprovalPatternId:
          l$mstrApprovalPatternByMstrApprovalPatternId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.fromJson(
              (l$mstrApprovalPatternByMstrApprovalPatternId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId?
  mstrApprovalPatternByMstrApprovalPatternId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternByMstrApprovalPatternId =
        mstrApprovalPatternByMstrApprovalPatternId;
    _resultData['mstrApprovalPatternByMstrApprovalPatternId'] =
        l$mstrApprovalPatternByMstrApprovalPatternId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternByMstrApprovalPatternId =
        mstrApprovalPatternByMstrApprovalPatternId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternByMstrApprovalPatternId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ApprovalOperationPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternByMstrApprovalPatternId =
        mstrApprovalPatternByMstrApprovalPatternId;
    final lOther$mstrApprovalPatternByMstrApprovalPatternId =
        other.mstrApprovalPatternByMstrApprovalPatternId;
    if (l$mstrApprovalPatternByMstrApprovalPatternId !=
        lOther$mstrApprovalPatternByMstrApprovalPatternId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ApprovalOperationPageRfe
    on Query$ApprovalOperationPageRfe {
  CopyWith$Query$ApprovalOperationPageRfe<Query$ApprovalOperationPageRfe>
  get copyWith => CopyWith$Query$ApprovalOperationPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ApprovalOperationPageRfe<TRes> {
  factory CopyWith$Query$ApprovalOperationPageRfe(
    Query$ApprovalOperationPageRfe instance,
    TRes Function(Query$ApprovalOperationPageRfe) then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe;

  factory CopyWith$Query$ApprovalOperationPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ApprovalOperationPageRfe;

  TRes call({
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId?
    mstrApprovalPatternByMstrApprovalPatternId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get mstrApprovalPatternByMstrApprovalPatternId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe<TRes>
    implements CopyWith$Query$ApprovalOperationPageRfe<TRes> {
  _CopyWithImpl$Query$ApprovalOperationPageRfe(this._instance, this._then);

  final Query$ApprovalOperationPageRfe _instance;

  final TRes Function(Query$ApprovalOperationPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternByMstrApprovalPatternId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe(
      mstrApprovalPatternByMstrApprovalPatternId:
          mstrApprovalPatternByMstrApprovalPatternId == _undefined
          ? _instance.mstrApprovalPatternByMstrApprovalPatternId
          : (mstrApprovalPatternByMstrApprovalPatternId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get mstrApprovalPatternByMstrApprovalPatternId {
    final local$mstrApprovalPatternByMstrApprovalPatternId =
        _instance.mstrApprovalPatternByMstrApprovalPatternId;
    return local$mstrApprovalPatternByMstrApprovalPatternId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
            local$mstrApprovalPatternByMstrApprovalPatternId,
            (e) => call(mstrApprovalPatternByMstrApprovalPatternId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe<TRes>
    implements CopyWith$Query$ApprovalOperationPageRfe<TRes> {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe(this._res);

  TRes _res;

  call({
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId?
    mstrApprovalPatternByMstrApprovalPatternId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get mstrApprovalPatternByMstrApprovalPatternId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.stub(
        _res,
      );
}

const documentNodeQueryApprovalOperationPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ApprovalOperationPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrApprovalPatternId'),
          ),
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
            name: NameNode(value: 'mstrApprovalPatternByMstrApprovalPatternId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrApprovalPatternId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrApprovalPatternId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrApprovalPatternId'),
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
                  name: NameNode(
                    value: 'mstrApprovalPatternDetailsByMstrApprovalPatternId',
                  ),
                  alias: NameNode(value: 'pattern_detail'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'totalCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'pageInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'hasNextPage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'endCursor'),
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
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(
                                value: 'mstrApprovalPatternDetailId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mstrApprovalId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mstrApprovalPatternId'),
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
                                value: 'mstrApprovalByMstrApprovalId',
                              ),
                              alias: NameNode(value: 'approval'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'mstrApprovalId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'infoDepartmentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'infoPositionId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'priority'),
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
                                      value: 'sharedAppellationByNames',
                                    ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
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
                                                              value:
                                                                  '__typename',
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
Query$ApprovalOperationPageRfe _parserFn$Query$ApprovalOperationPageRfe(
  Map<String, dynamic> data,
) => Query$ApprovalOperationPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ApprovalOperationPageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ApprovalOperationPageRfe?,
    );

class Options$Query$ApprovalOperationPageRfe
    extends graphql.QueryOptions<Query$ApprovalOperationPageRfe> {
  Options$Query$ApprovalOperationPageRfe({
    String? operationName,
    required Variables$Query$ApprovalOperationPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApprovalOperationPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ApprovalOperationPageRfe? onComplete,
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
                     : _parserFn$Query$ApprovalOperationPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryApprovalOperationPageRfe,
         parserFn: _parserFn$Query$ApprovalOperationPageRfe,
       );

  final OnQueryComplete$Query$ApprovalOperationPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ApprovalOperationPageRfe
    extends graphql.WatchQueryOptions<Query$ApprovalOperationPageRfe> {
  WatchOptions$Query$ApprovalOperationPageRfe({
    String? operationName,
    required Variables$Query$ApprovalOperationPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApprovalOperationPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryApprovalOperationPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ApprovalOperationPageRfe,
       );
}

class FetchMoreOptions$Query$ApprovalOperationPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ApprovalOperationPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ApprovalOperationPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryApprovalOperationPageRfe,
       );
}

extension ClientExtension$Query$ApprovalOperationPageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ApprovalOperationPageRfe>>
  query$ApprovalOperationPageRfe(
    Options$Query$ApprovalOperationPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ApprovalOperationPageRfe>
  watchQuery$ApprovalOperationPageRfe(
    WatchOptions$Query$ApprovalOperationPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ApprovalOperationPageRfe({
    required Query$ApprovalOperationPageRfe data,
    required Variables$Query$ApprovalOperationPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryApprovalOperationPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ApprovalOperationPageRfe? readQuery$ApprovalOperationPageRfe({
    required Variables$Query$ApprovalOperationPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryApprovalOperationPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ApprovalOperationPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ApprovalOperationPageRfe>
useQuery$ApprovalOperationPageRfe(
  Options$Query$ApprovalOperationPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ApprovalOperationPageRfe>
useWatchQuery$ApprovalOperationPageRfe(
  WatchOptions$Query$ApprovalOperationPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ApprovalOperationPageRfe$Widget
    extends graphql_flutter.Query<Query$ApprovalOperationPageRfe> {
  Query$ApprovalOperationPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ApprovalOperationPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ApprovalOperationPageRfe>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId({
    required this.mstrApprovalPatternId,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    required this.pattern_detail,
    this.$__typename = 'MstrApprovalPattern',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$pattern_detail = json['pattern_detail'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      pattern_detail:
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail.fromJson(
            (l$pattern_detail as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternId;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels?
  labels;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail
  pattern_detail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
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
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$pattern_detail = pattern_detail;
    _resultData['pattern_detail'] = l$pattern_detail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$pattern_detail = pattern_detail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternId,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$labels,
      l$pattern_detail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$pattern_detail = pattern_detail;
    final lOther$pattern_detail = other.pattern_detail;
    if (l$pattern_detail != lOther$pattern_detail) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId
    on Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId;

  TRes call({
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels?
    labels,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail?
    pattern_detail,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
    TRes
  >
  get pattern_detail;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternId = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? pattern_detail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
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
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels?),
      pattern_detail: pattern_detail == _undefined || pattern_detail == null
          ? _instance.pattern_detail
          : (pattern_detail
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
    TRes
  >
  get pattern_detail {
    final local$pattern_detail = _instance.pattern_detail;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
      local$pattern_detail,
      (e) => call(pattern_detail: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels?
    labels,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail?
    pattern_detail,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
    TRes
  >
  get pattern_detail =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels.fromJson(
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
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels,
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
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrApprovalPatternDetailsConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo
  pageInfo;

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail;

  TRes call({
    int? totalCount,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo?
    pageInfo,
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo?
    pageInfo,
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes({
    required this.mstrApprovalPatternDetailId,
    required this.mstrApprovalId,
    required this.mstrApprovalPatternId,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.approval,
    this.$__typename = 'MstrApprovalPatternDetail',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternDetailId = json['mstrApprovalPatternDetailId'];
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$approval = json['approval'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
      mstrApprovalPatternDetailId: (l$mstrApprovalPatternDetailId as String),
      mstrApprovalId: (l$mstrApprovalId as String),
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      approval: l$approval == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval.fromJson(
              (l$approval as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternDetailId;

  final String mstrApprovalId;

  final String mstrApprovalPatternId;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval?
  approval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    _resultData['mstrApprovalPatternDetailId'] = l$mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$approval = approval;
    _resultData['approval'] = l$approval?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$approval = approval;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternDetailId,
      l$mstrApprovalId,
      l$mstrApprovalPatternId,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$approval,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final lOther$mstrApprovalPatternDetailId =
        other.mstrApprovalPatternDetailId;
    if (l$mstrApprovalPatternDetailId != lOther$mstrApprovalPatternDetailId) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$approval = approval;
    final lOther$approval = other.approval;
    if (l$approval != lOther$approval) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes;

  TRes call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval?
    approval,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
    TRes
  >
  get approval;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternDetailId = _undefined,
    Object? mstrApprovalId = _undefined,
    Object? mstrApprovalPatternId = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? approval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
      mstrApprovalPatternDetailId:
          mstrApprovalPatternDetailId == _undefined ||
              mstrApprovalPatternDetailId == null
          ? _instance.mstrApprovalPatternDetailId
          : (mstrApprovalPatternDetailId as String),
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      approval: approval == _undefined
          ? _instance.approval
          : (approval
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
    TRes
  >
  get approval {
    final local$approval = _instance.approval;
    return local$approval == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
            local$approval,
            (e) => call(approval: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval?
    approval,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
    TRes
  >
  get approval =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval({
    required this.mstrApprovalId,
    this.infoDepartmentId,
    required this.infoPositionId,
    this.priority,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.$__typename = 'MstrApproval',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$infoPositionId = json['infoPositionId'];
    final l$priority = json['priority'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
      mstrApprovalId: (l$mstrApprovalId as String),
      infoDepartmentId: (l$infoDepartmentId as String?),
      infoPositionId: (l$infoPositionId as String),
      priority: (l$priority as int?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalId;

  final String? infoDepartmentId;

  final String infoPositionId;

  final int? priority;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    _resultData['infoPositionId'] = l$infoPositionId;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
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
    final l$mstrApprovalId = mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    final l$priority = priority;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalId,
      l$infoDepartmentId,
      l$infoPositionId,
      l$priority,
      l$symbol,
      l$remarks,
      l$updateAt,
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
    if (other
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval;

  TRes call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalId = _undefined,
    Object? infoDepartmentId = _undefined,
    Object? infoPositionId = _undefined,
    Object? priority = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      infoDepartmentId: infoDepartmentId == _undefined
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String?),
      infoPositionId: infoPositionId == _undefined || infoPositionId == null
          ? _instance.infoPositionId
          : (infoPositionId as String),
      priority: priority == _undefined
          ? _instance.priority
          : (priority as int?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels.fromJson(
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
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels,
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
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
