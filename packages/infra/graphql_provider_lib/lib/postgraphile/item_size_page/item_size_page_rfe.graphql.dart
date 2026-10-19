import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemSizePageRfe {
  factory Variables$Query$ItemSizePageRfe({
    required String mstrItemActualSizeId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ItemSizePageRfe._({
    r'mstrItemActualSizeId': mstrItemActualSizeId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ItemSizePageRfe._(this._$data);

  factory Variables$Query$ItemSizePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = data['mstrItemActualSizeId'];
    result$data['mstrItemActualSizeId'] = (l$mstrItemActualSizeId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ItemSizePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemActualSizeId => (_$data['mstrItemActualSizeId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    result$data['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemSizePageRfe<Variables$Query$ItemSizePageRfe>
  get copyWith => CopyWith$Variables$Query$ItemSizePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemSizePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final lOther$mstrItemActualSizeId = other.mstrItemActualSizeId;
    if (l$mstrItemActualSizeId != lOther$mstrItemActualSizeId) {
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
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ItemSizePageRfe<TRes> {
  factory CopyWith$Variables$Query$ItemSizePageRfe(
    Variables$Query$ItemSizePageRfe instance,
    TRes Function(Variables$Query$ItemSizePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ItemSizePageRfe;

  factory CopyWith$Variables$Query$ItemSizePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemSizePageRfe;

  TRes call({
    String? mstrItemActualSizeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ItemSizePageRfe<TRes>
    implements CopyWith$Variables$Query$ItemSizePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ItemSizePageRfe(this._instance, this._then);

  final Variables$Query$ItemSizePageRfe _instance;

  final TRes Function(Variables$Query$ItemSizePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ItemSizePageRfe._({
      ..._instance._$data,
      if (mstrItemActualSizeId != _undefined && mstrItemActualSizeId != null)
        'mstrItemActualSizeId': (mstrItemActualSizeId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemSizePageRfe<TRes>
    implements CopyWith$Variables$Query$ItemSizePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemSizePageRfe(this._res);

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ItemSizePageRfe {
  Query$ItemSizePageRfe({
    this.mstrItemActualSizeByMstrItemActualSizeId,
    this.$__typename = 'Query',
  });

  factory Query$ItemSizePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrItemActualSizeByMstrItemActualSizeId =
        json['mstrItemActualSizeByMstrItemActualSizeId'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe(
      mstrItemActualSizeByMstrItemActualSizeId:
          l$mstrItemActualSizeByMstrItemActualSizeId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId.fromJson(
              (l$mstrItemActualSizeByMstrItemActualSizeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId?
  mstrItemActualSizeByMstrItemActualSizeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSizeByMstrItemActualSizeId =
        mstrItemActualSizeByMstrItemActualSizeId;
    _resultData['mstrItemActualSizeByMstrItemActualSizeId'] =
        l$mstrItemActualSizeByMstrItemActualSizeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemActualSizeByMstrItemActualSizeId =
        mstrItemActualSizeByMstrItemActualSizeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemActualSizeByMstrItemActualSizeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemSizePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeByMstrItemActualSizeId =
        mstrItemActualSizeByMstrItemActualSizeId;
    final lOther$mstrItemActualSizeByMstrItemActualSizeId =
        other.mstrItemActualSizeByMstrItemActualSizeId;
    if (l$mstrItemActualSizeByMstrItemActualSizeId !=
        lOther$mstrItemActualSizeByMstrItemActualSizeId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemSizePageRfe on Query$ItemSizePageRfe {
  CopyWith$Query$ItemSizePageRfe<Query$ItemSizePageRfe> get copyWith =>
      CopyWith$Query$ItemSizePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ItemSizePageRfe<TRes> {
  factory CopyWith$Query$ItemSizePageRfe(
    Query$ItemSizePageRfe instance,
    TRes Function(Query$ItemSizePageRfe) then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe;

  factory CopyWith$Query$ItemSizePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemSizePageRfe;

  TRes call({
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId?
    mstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<TRes>
  get mstrItemActualSizeByMstrItemActualSizeId;
}

class _CopyWithImpl$Query$ItemSizePageRfe<TRes>
    implements CopyWith$Query$ItemSizePageRfe<TRes> {
  _CopyWithImpl$Query$ItemSizePageRfe(this._instance, this._then);

  final Query$ItemSizePageRfe _instance;

  final TRes Function(Query$ItemSizePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeByMstrItemActualSizeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe(
      mstrItemActualSizeByMstrItemActualSizeId:
          mstrItemActualSizeByMstrItemActualSizeId == _undefined
          ? _instance.mstrItemActualSizeByMstrItemActualSizeId
          : (mstrItemActualSizeByMstrItemActualSizeId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<TRes>
  get mstrItemActualSizeByMstrItemActualSizeId {
    final local$mstrItemActualSizeByMstrItemActualSizeId =
        _instance.mstrItemActualSizeByMstrItemActualSizeId;
    return local$mstrItemActualSizeByMstrItemActualSizeId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
            local$mstrItemActualSizeByMstrItemActualSizeId,
            (e) => call(mstrItemActualSizeByMstrItemActualSizeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe<TRes>
    implements CopyWith$Query$ItemSizePageRfe<TRes> {
  _CopyWithStubImpl$Query$ItemSizePageRfe(this._res);

  TRes _res;

  call({
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId?
    mstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<TRes>
  get mstrItemActualSizeByMstrItemActualSizeId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId.stub(
        _res,
      );
}

const documentNodeQueryItemSizePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemSizePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemActualSizeId')),
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
            name: NameNode(value: 'mstrItemActualSizeByMstrItemActualSizeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrItemActualSizeId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrItemActualSizeId'),
                ),
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
                  name: NameNode(value: 'mstrItemSizeKindId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mstrItemSizeKindByMstrItemSizeKindId'),
                  alias: NameNode(value: 'kinds'),
                  arguments: [],
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
                        name: NameNode(value: 'names'),
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
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
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
                          value:
                              'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
Query$ItemSizePageRfe _parserFn$Query$ItemSizePageRfe(
  Map<String, dynamic> data,
) => Query$ItemSizePageRfe.fromJson(data);
typedef OnQueryComplete$Query$ItemSizePageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemSizePageRfe?);

class Options$Query$ItemSizePageRfe
    extends graphql.QueryOptions<Query$ItemSizePageRfe> {
  Options$Query$ItemSizePageRfe({
    String? operationName,
    required Variables$Query$ItemSizePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemSizePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemSizePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryItemSizePageRfe,
         parserFn: _parserFn$Query$ItemSizePageRfe,
       );

  final OnQueryComplete$Query$ItemSizePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemSizePageRfe
    extends graphql.WatchQueryOptions<Query$ItemSizePageRfe> {
  WatchOptions$Query$ItemSizePageRfe({
    String? operationName,
    required Variables$Query$ItemSizePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryItemSizePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemSizePageRfe,
       );
}

class FetchMoreOptions$Query$ItemSizePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemSizePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemSizePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemSizePageRfe,
       );
}

extension ClientExtension$Query$ItemSizePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemSizePageRfe>> query$ItemSizePageRfe(
    Options$Query$ItemSizePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemSizePageRfe> watchQuery$ItemSizePageRfe(
    WatchOptions$Query$ItemSizePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ItemSizePageRfe({
    required Query$ItemSizePageRfe data,
    required Variables$Query$ItemSizePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemSizePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemSizePageRfe? readQuery$ItemSizePageRfe({
    required Variables$Query$ItemSizePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemSizePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemSizePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemSizePageRfe> useQuery$ItemSizePageRfe(
  Options$Query$ItemSizePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemSizePageRfe> useWatchQuery$ItemSizePageRfe(
  WatchOptions$Query$ItemSizePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemSizePageRfe$Widget
    extends graphql_flutter.Query<Query$ItemSizePageRfe> {
  Query$ItemSizePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ItemSizePageRfe options,
    required graphql_flutter.QueryBuilder<Query$ItemSizePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId({
    required this.mstrItemId,
    required this.mstrItemSizeKindId,
    this.kinds,
    this.detailTexts,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrItemActualSize',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$kinds = json['kinds'];
    final l$detailTexts = json['detailTexts'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
      mstrItemId: (l$mstrItemId as String),
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      kinds: l$kinds == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds.fromJson(
              (l$kinds as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts.fromJson(
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

  final String mstrItemId;

  final String mstrItemSizeKindId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds?
  kinds;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts?
  detailTexts;

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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$kinds = kinds;
    _resultData['kinds'] = l$kinds?.toJson();
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
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$kinds = kinds;
    final l$detailTexts = detailTexts;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemSizeKindId,
      l$kinds,
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
    if (other
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$kinds = kinds;
    final lOther$kinds = other.kinds;
    if (l$kinds != lOther$kinds) {
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId;

  TRes call({
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds? kinds,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts?
    detailTexts,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
    TRes
  >
  get kinds;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
    TRes
  >
  get detailTexts;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? kinds = _undefined,
    Object? detailTexts = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      kinds: kinds == _undefined
          ? _instance.kinds
          : (kinds
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts?),
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

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
    TRes
  >
  get kinds {
    final local$kinds = _instance.kinds;
    return local$kinds == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
            local$kinds,
            (e) => call(kinds: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds? kinds,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts?
    detailTexts,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
    TRes
  >
  get kinds =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds({
    required this.mstrItemSizeKindId,
    required this.code,
    required this.names,
    this.labels,
    required this.sharedUnitId,
    this.unit,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$names = json['names'];
    final l$labels = json['labels'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      names: (l$names as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final String names;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels?
  labels;

  final String sharedUnitId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit?
  unit;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$names = names;
    _resultData['names'] = l$names;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$names = names;
    final l$labels = labels;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$code,
      l$names,
      l$labels,
      l$sharedUnitId,
      l$unit,
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
    if (other
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds ||
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
    final l$names = names;
    final lOther$names = other.names;
    if (l$names != lOther$names) {
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels?
    labels,
    String? sharedUnitId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit?
    unit,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
    TRes
  >
  get unit;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? names = _undefined,
    Object? labels = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      names: names == _undefined || names == null
          ? _instance.names
          : (names as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels?),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels?
    labels,
    String? sharedUnitId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit?
    unit,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
    TRes
  >
  get unit =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels.fromJson(
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
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels,
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
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit;

  TRes call({
    String? sharedUnitId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels.fromJson(
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
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels,
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
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user({
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

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user.fromJson(
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
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name.fromJson(
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

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name?
  name;

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
    if (other
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user,
  )
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
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
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
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name?),
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

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name.fromJson(
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
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name,
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
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja
  ja;

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en
  en;

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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja?
    ja,
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en.stub(
        _res,
      );
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en
    on Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en;

  TRes call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
          Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes {
  Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
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
            is! Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
    on
        Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes {
  CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes;

  factory CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRfe$mstrItemActualSizeByMstrItemActualSizeId$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}
