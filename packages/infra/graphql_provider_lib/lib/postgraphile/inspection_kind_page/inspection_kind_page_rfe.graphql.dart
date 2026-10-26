import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$InspectionKindPageRfe {
  factory Variables$Query$InspectionKindPageRfe({
    required String mstrInspectionKindId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$InspectionKindPageRfe._({
    r'mstrInspectionKindId': mstrInspectionKindId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$InspectionKindPageRfe._(this._$data);

  factory Variables$Query$InspectionKindPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionKindId = data['mstrInspectionKindId'];
    result$data['mstrInspectionKindId'] = (l$mstrInspectionKindId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$InspectionKindPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionKindId => (_$data['mstrInspectionKindId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    result$data['mstrInspectionKindId'] = l$mstrInspectionKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$InspectionKindPageRfe<
    Variables$Query$InspectionKindPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$InspectionKindPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$InspectionKindPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final lOther$mstrInspectionKindId = other.mstrInspectionKindId;
    if (l$mstrInspectionKindId != lOther$mstrInspectionKindId) {
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrInspectionKindId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$InspectionKindPageRfe<TRes> {
  factory CopyWith$Variables$Query$InspectionKindPageRfe(
    Variables$Query$InspectionKindPageRfe instance,
    TRes Function(Variables$Query$InspectionKindPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$InspectionKindPageRfe;

  factory CopyWith$Variables$Query$InspectionKindPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$InspectionKindPageRfe;

  TRes call({
    String? mstrInspectionKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$InspectionKindPageRfe<TRes>
    implements CopyWith$Variables$Query$InspectionKindPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$InspectionKindPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$InspectionKindPageRfe _instance;

  final TRes Function(Variables$Query$InspectionKindPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$InspectionKindPageRfe._({
      ..._instance._$data,
      if (mstrInspectionKindId != _undefined && mstrInspectionKindId != null)
        'mstrInspectionKindId': (mstrInspectionKindId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$InspectionKindPageRfe<TRes>
    implements CopyWith$Variables$Query$InspectionKindPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$InspectionKindPageRfe(this._res);

  TRes _res;

  call({
    String? mstrInspectionKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$InspectionKindPageRfe {
  Query$InspectionKindPageRfe({
    this.mstrInspectionKindByMstrInspectionKindId,
    this.$__typename = 'Query',
  });

  factory Query$InspectionKindPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrInspectionKindByMstrInspectionKindId =
        json['mstrInspectionKindByMstrInspectionKindId'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe(
      mstrInspectionKindByMstrInspectionKindId:
          l$mstrInspectionKindByMstrInspectionKindId == null
          ? null
          : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId.fromJson(
              (l$mstrInspectionKindByMstrInspectionKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId?
  mstrInspectionKindByMstrInspectionKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKindByMstrInspectionKindId =
        mstrInspectionKindByMstrInspectionKindId;
    _resultData['mstrInspectionKindByMstrInspectionKindId'] =
        l$mstrInspectionKindByMstrInspectionKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionKindByMstrInspectionKindId =
        mstrInspectionKindByMstrInspectionKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionKindByMstrInspectionKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InspectionKindPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindByMstrInspectionKindId =
        mstrInspectionKindByMstrInspectionKindId;
    final lOther$mstrInspectionKindByMstrInspectionKindId =
        other.mstrInspectionKindByMstrInspectionKindId;
    if (l$mstrInspectionKindByMstrInspectionKindId !=
        lOther$mstrInspectionKindByMstrInspectionKindId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InspectionKindPageRfe
    on Query$InspectionKindPageRfe {
  CopyWith$Query$InspectionKindPageRfe<Query$InspectionKindPageRfe>
  get copyWith => CopyWith$Query$InspectionKindPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$InspectionKindPageRfe<TRes> {
  factory CopyWith$Query$InspectionKindPageRfe(
    Query$InspectionKindPageRfe instance,
    TRes Function(Query$InspectionKindPageRfe) then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe;

  factory CopyWith$Query$InspectionKindPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$InspectionKindPageRfe;

  TRes call({
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId?
    mstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get mstrInspectionKindByMstrInspectionKindId;
}

class _CopyWithImpl$Query$InspectionKindPageRfe<TRes>
    implements CopyWith$Query$InspectionKindPageRfe<TRes> {
  _CopyWithImpl$Query$InspectionKindPageRfe(this._instance, this._then);

  final Query$InspectionKindPageRfe _instance;

  final TRes Function(Query$InspectionKindPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindByMstrInspectionKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe(
      mstrInspectionKindByMstrInspectionKindId:
          mstrInspectionKindByMstrInspectionKindId == _undefined
          ? _instance.mstrInspectionKindByMstrInspectionKindId
          : (mstrInspectionKindByMstrInspectionKindId
                as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get mstrInspectionKindByMstrInspectionKindId {
    final local$mstrInspectionKindByMstrInspectionKindId =
        _instance.mstrInspectionKindByMstrInspectionKindId;
    return local$mstrInspectionKindByMstrInspectionKindId == null
        ? CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
            local$mstrInspectionKindByMstrInspectionKindId,
            (e) => call(mstrInspectionKindByMstrInspectionKindId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe<TRes>
    implements CopyWith$Query$InspectionKindPageRfe<TRes> {
  _CopyWithStubImpl$Query$InspectionKindPageRfe(this._res);

  TRes _res;

  call({
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId?
    mstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get mstrInspectionKindByMstrInspectionKindId =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId.stub(
        _res,
      );
}

const documentNodeQueryInspectionKindPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'InspectionKindPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrInspectionKindId')),
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
            name: NameNode(value: 'mstrInspectionKindByMstrInspectionKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrInspectionKindId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrInspectionKindId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrInspectionKindId'),
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
Query$InspectionKindPageRfe _parserFn$Query$InspectionKindPageRfe(
  Map<String, dynamic> data,
) => Query$InspectionKindPageRfe.fromJson(data);
typedef OnQueryComplete$Query$InspectionKindPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$InspectionKindPageRfe?,
);

class Options$Query$InspectionKindPageRfe
    extends graphql.QueryOptions<Query$InspectionKindPageRfe> {
  Options$Query$InspectionKindPageRfe({
    String? operationName,
    required Variables$Query$InspectionKindPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InspectionKindPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$InspectionKindPageRfe? onComplete,
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
                     : _parserFn$Query$InspectionKindPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryInspectionKindPageRfe,
         parserFn: _parserFn$Query$InspectionKindPageRfe,
       );

  final OnQueryComplete$Query$InspectionKindPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$InspectionKindPageRfe
    extends graphql.WatchQueryOptions<Query$InspectionKindPageRfe> {
  WatchOptions$Query$InspectionKindPageRfe({
    String? operationName,
    required Variables$Query$InspectionKindPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InspectionKindPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryInspectionKindPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$InspectionKindPageRfe,
       );
}

class FetchMoreOptions$Query$InspectionKindPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$InspectionKindPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$InspectionKindPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryInspectionKindPageRfe,
       );
}

extension ClientExtension$Query$InspectionKindPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$InspectionKindPageRfe>>
  query$InspectionKindPageRfe(
    Options$Query$InspectionKindPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$InspectionKindPageRfe>
  watchQuery$InspectionKindPageRfe(
    WatchOptions$Query$InspectionKindPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$InspectionKindPageRfe({
    required Query$InspectionKindPageRfe data,
    required Variables$Query$InspectionKindPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryInspectionKindPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$InspectionKindPageRfe? readQuery$InspectionKindPageRfe({
    required Variables$Query$InspectionKindPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryInspectionKindPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$InspectionKindPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$InspectionKindPageRfe>
useQuery$InspectionKindPageRfe(Options$Query$InspectionKindPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$InspectionKindPageRfe>
useWatchQuery$InspectionKindPageRfe(
  WatchOptions$Query$InspectionKindPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$InspectionKindPageRfe$Widget
    extends graphql_flutter.Query<Query$InspectionKindPageRfe> {
  Query$InspectionKindPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$InspectionKindPageRfe options,
    required graphql_flutter.QueryBuilder<Query$InspectionKindPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId({
    required this.mstrInspectionKindId,
    required this.code,
    this.labels,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrInspectionKind',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKindId = json['mstrInspectionKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKindId: (l$mstrInspectionKindId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionKindId;

  final String code;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels?
  labels;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    _resultData['mstrInspectionKindId'] = l$mstrInspectionKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$code = code;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionKindId,
      l$code,
      l$labels,
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final lOther$mstrInspectionKindId = other.mstrInspectionKindId;
    if (l$mstrInspectionKindId != lOther$mstrInspectionKindId) {
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId
    on Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId;

  TRes call({
    String? mstrInspectionKindId,
    String? code,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels?
    labels,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKindId:
          mstrInspectionKindId == _undefined || mstrInspectionKindId == null
          ? _instance.mstrInspectionKindId
          : (mstrInspectionKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels?),
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

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionKindId,
    String? code,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels?
    labels,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels.stub(
        _res,
      );
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels.fromJson(
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
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels
    on Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels,
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
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InspectionKindPageRfe$mstrInspectionKindByMstrInspectionKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
