import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemSizeKindPageRfe {
  factory Variables$Query$ItemSizeKindPageRfe({
    required String mstrItemSizeKindId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ItemSizeKindPageRfe._({
    r'mstrItemSizeKindId': mstrItemSizeKindId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ItemSizeKindPageRfe._(this._$data);

  factory Variables$Query$ItemSizeKindPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemSizeKindId = data['mstrItemSizeKindId'];
    result$data['mstrItemSizeKindId'] = (l$mstrItemSizeKindId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ItemSizeKindPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemSizeKindId => (_$data['mstrItemSizeKindId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    result$data['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemSizeKindPageRfe<
    Variables$Query$ItemSizeKindPageRfe
  >
  get copyWith => CopyWith$Variables$Query$ItemSizeKindPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemSizeKindPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ItemSizeKindPageRfe<TRes> {
  factory CopyWith$Variables$Query$ItemSizeKindPageRfe(
    Variables$Query$ItemSizeKindPageRfe instance,
    TRes Function(Variables$Query$ItemSizeKindPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ItemSizeKindPageRfe;

  factory CopyWith$Variables$Query$ItemSizeKindPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemSizeKindPageRfe;

  TRes call({
    String? mstrItemSizeKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ItemSizeKindPageRfe<TRes>
    implements CopyWith$Variables$Query$ItemSizeKindPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ItemSizeKindPageRfe(this._instance, this._then);

  final Variables$Query$ItemSizeKindPageRfe _instance;

  final TRes Function(Variables$Query$ItemSizeKindPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ItemSizeKindPageRfe._({
      ..._instance._$data,
      if (mstrItemSizeKindId != _undefined && mstrItemSizeKindId != null)
        'mstrItemSizeKindId': (mstrItemSizeKindId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemSizeKindPageRfe<TRes>
    implements CopyWith$Variables$Query$ItemSizeKindPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemSizeKindPageRfe(this._res);

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ItemSizeKindPageRfe {
  Query$ItemSizeKindPageRfe({
    this.mstrItemSizeKindByMstrItemSizeKindId,
    this.$__typename = 'Query',
  });

  factory Query$ItemSizeKindPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        json['mstrItemSizeKindByMstrItemSizeKindId'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe(
      mstrItemSizeKindByMstrItemSizeKindId:
          l$mstrItemSizeKindByMstrItemSizeKindId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
              (l$mstrItemSizeKindByMstrItemSizeKindId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId?
  mstrItemSizeKindByMstrItemSizeKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    _resultData['mstrItemSizeKindByMstrItemSizeKindId'] =
        l$mstrItemSizeKindByMstrItemSizeKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindByMstrItemSizeKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemSizeKindPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final lOther$mstrItemSizeKindByMstrItemSizeKindId =
        other.mstrItemSizeKindByMstrItemSizeKindId;
    if (l$mstrItemSizeKindByMstrItemSizeKindId !=
        lOther$mstrItemSizeKindByMstrItemSizeKindId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemSizeKindPageRfe
    on Query$ItemSizeKindPageRfe {
  CopyWith$Query$ItemSizeKindPageRfe<Query$ItemSizeKindPageRfe> get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ItemSizeKindPageRfe<TRes> {
  factory CopyWith$Query$ItemSizeKindPageRfe(
    Query$ItemSizeKindPageRfe instance,
    TRes Function(Query$ItemSizeKindPageRfe) then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe;

  factory CopyWith$Query$ItemSizeKindPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemSizeKindPageRfe;

  TRes call({
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<TRes>
  get mstrItemSizeKindByMstrItemSizeKindId;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe<TRes>
    implements CopyWith$Query$ItemSizeKindPageRfe<TRes> {
  _CopyWithImpl$Query$ItemSizeKindPageRfe(this._instance, this._then);

  final Query$ItemSizeKindPageRfe _instance;

  final TRes Function(Query$ItemSizeKindPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindByMstrItemSizeKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe(
      mstrItemSizeKindByMstrItemSizeKindId:
          mstrItemSizeKindByMstrItemSizeKindId == _undefined
          ? _instance.mstrItemSizeKindByMstrItemSizeKindId
          : (mstrItemSizeKindByMstrItemSizeKindId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<TRes>
  get mstrItemSizeKindByMstrItemSizeKindId {
    final local$mstrItemSizeKindByMstrItemSizeKindId =
        _instance.mstrItemSizeKindByMstrItemSizeKindId;
    return local$mstrItemSizeKindByMstrItemSizeKindId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
            local$mstrItemSizeKindByMstrItemSizeKindId,
            (e) => call(mstrItemSizeKindByMstrItemSizeKindId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe<TRes>
    implements CopyWith$Query$ItemSizeKindPageRfe<TRes> {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe(this._res);

  TRes _res;

  call({
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<TRes>
  get mstrItemSizeKindByMstrItemSizeKindId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId.stub(
        _res,
      );
}

const documentNodeQueryItemSizeKindPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemSizeKindPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemSizeKindId')),
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
            name: NameNode(value: 'mstrItemSizeKindByMstrItemSizeKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrItemSizeKindId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrItemSizeKindId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrItemSizeKindId'),
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
Query$ItemSizeKindPageRfe _parserFn$Query$ItemSizeKindPageRfe(
  Map<String, dynamic> data,
) => Query$ItemSizeKindPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ItemSizeKindPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemSizeKindPageRfe?);

class Options$Query$ItemSizeKindPageRfe
    extends graphql.QueryOptions<Query$ItemSizeKindPageRfe> {
  Options$Query$ItemSizeKindPageRfe({
    String? operationName,
    required Variables$Query$ItemSizeKindPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizeKindPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemSizeKindPageRfe? onComplete,
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
                     : _parserFn$Query$ItemSizeKindPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryItemSizeKindPageRfe,
         parserFn: _parserFn$Query$ItemSizeKindPageRfe,
       );

  final OnQueryComplete$Query$ItemSizeKindPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemSizeKindPageRfe
    extends graphql.WatchQueryOptions<Query$ItemSizeKindPageRfe> {
  WatchOptions$Query$ItemSizeKindPageRfe({
    String? operationName,
    required Variables$Query$ItemSizeKindPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizeKindPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryItemSizeKindPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemSizeKindPageRfe,
       );
}

class FetchMoreOptions$Query$ItemSizeKindPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemSizeKindPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemSizeKindPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemSizeKindPageRfe,
       );
}

extension ClientExtension$Query$ItemSizeKindPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemSizeKindPageRfe>>
  query$ItemSizeKindPageRfe(Options$Query$ItemSizeKindPageRfe options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$ItemSizeKindPageRfe>
  watchQuery$ItemSizeKindPageRfe(
    WatchOptions$Query$ItemSizeKindPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ItemSizeKindPageRfe({
    required Query$ItemSizeKindPageRfe data,
    required Variables$Query$ItemSizeKindPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryItemSizeKindPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemSizeKindPageRfe? readQuery$ItemSizeKindPageRfe({
    required Variables$Query$ItemSizeKindPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemSizeKindPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemSizeKindPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemSizeKindPageRfe>
useQuery$ItemSizeKindPageRfe(Options$Query$ItemSizeKindPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemSizeKindPageRfe>
useWatchQuery$ItemSizeKindPageRfe(
  WatchOptions$Query$ItemSizeKindPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemSizeKindPageRfe$Widget
    extends graphql_flutter.Query<Query$ItemSizeKindPageRfe> {
  Query$ItemSizeKindPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ItemSizeKindPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ItemSizeKindPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId({
    required this.mstrItemSizeKindId,
    required this.code,
    this.labels,
    required this.sharedUnitId,
    this.unit,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels?
  labels;

  final String sharedUnitId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit?
  unit;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$labels = labels;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$code,
      l$labels,
      l$sharedUnitId,
      l$unit,
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
    if (other
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId
    on Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels?
    labels,
    String? sharedUnitId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit? unit,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
    TRes
  >
  get unit;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels?),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit?),
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

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels?
    labels,
    String? sharedUnitId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit? unit,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
    TRes
  >
  get unit =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels.fromJson(
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
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels
    on Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels,
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
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit
    on Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit;

  TRes call({
    String? sharedUnitId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels.fromJson(
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
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels
    on Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels,
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
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizeKindPageRfe$mstrItemSizeKindByMstrItemSizeKindId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
