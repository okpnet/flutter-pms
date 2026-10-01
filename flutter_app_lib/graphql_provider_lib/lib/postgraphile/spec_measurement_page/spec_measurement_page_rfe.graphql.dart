import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SpecMeasurementPageRfe {
  factory Variables$Query$SpecMeasurementPageRfe({
    required String mstrSpecMeasurementId,
    required String languageCodeId,
  }) => Variables$Query$SpecMeasurementPageRfe._({
    r'mstrSpecMeasurementId': mstrSpecMeasurementId,
    r'languageCodeId': languageCodeId,
  });

  Variables$Query$SpecMeasurementPageRfe._(this._$data);

  factory Variables$Query$SpecMeasurementPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrSpecMeasurementId = data['mstrSpecMeasurementId'];
    result$data['mstrSpecMeasurementId'] = (l$mstrSpecMeasurementId as String);
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    return Variables$Query$SpecMeasurementPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrSpecMeasurementId =>
      (_$data['mstrSpecMeasurementId'] as String);

  String get languageCodeId => (_$data['languageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    result$data['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$SpecMeasurementPageRfe<
    Variables$Query$SpecMeasurementPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$SpecMeasurementPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SpecMeasurementPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementId = other.mstrSpecMeasurementId;
    if (l$mstrSpecMeasurementId != lOther$mstrSpecMeasurementId) {
      return false;
    }
    final l$languageCodeId = languageCodeId;
    final lOther$languageCodeId = other.languageCodeId;
    if (l$languageCodeId != lOther$languageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$languageCodeId = languageCodeId;
    return Object.hashAll([l$mstrSpecMeasurementId, l$languageCodeId]);
  }
}

abstract class CopyWith$Variables$Query$SpecMeasurementPageRfe<TRes> {
  factory CopyWith$Variables$Query$SpecMeasurementPageRfe(
    Variables$Query$SpecMeasurementPageRfe instance,
    TRes Function(Variables$Query$SpecMeasurementPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$SpecMeasurementPageRfe;

  factory CopyWith$Variables$Query$SpecMeasurementPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRfe;

  TRes call({String? mstrSpecMeasurementId, String? languageCodeId});
}

class _CopyWithImpl$Variables$Query$SpecMeasurementPageRfe<TRes>
    implements CopyWith$Variables$Query$SpecMeasurementPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$SpecMeasurementPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$SpecMeasurementPageRfe _instance;

  final TRes Function(Variables$Query$SpecMeasurementPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? languageCodeId = _undefined,
  }) => _then(
    Variables$Query$SpecMeasurementPageRfe._({
      ..._instance._$data,
      if (mstrSpecMeasurementId != _undefined && mstrSpecMeasurementId != null)
        'mstrSpecMeasurementId': (mstrSpecMeasurementId as String),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRfe<TRes>
    implements CopyWith$Variables$Query$SpecMeasurementPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRfe(this._res);

  TRes _res;

  call({String? mstrSpecMeasurementId, String? languageCodeId}) => _res;
}

class Query$SpecMeasurementPageRfe {
  Query$SpecMeasurementPageRfe({
    this.mstrSpecMeasurementByMstrSpecMeasurementId,
    this.$__typename = 'Query',
  });

  factory Query$SpecMeasurementPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrSpecMeasurementByMstrSpecMeasurementId =
        json['mstrSpecMeasurementByMstrSpecMeasurementId'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe(
      mstrSpecMeasurementByMstrSpecMeasurementId:
          l$mstrSpecMeasurementByMstrSpecMeasurementId == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
              (l$mstrSpecMeasurementByMstrSpecMeasurementId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId?
  mstrSpecMeasurementByMstrSpecMeasurementId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurementByMstrSpecMeasurementId =
        mstrSpecMeasurementByMstrSpecMeasurementId;
    _resultData['mstrSpecMeasurementByMstrSpecMeasurementId'] =
        l$mstrSpecMeasurementByMstrSpecMeasurementId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementByMstrSpecMeasurementId =
        mstrSpecMeasurementByMstrSpecMeasurementId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrSpecMeasurementByMstrSpecMeasurementId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SpecMeasurementPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementByMstrSpecMeasurementId =
        mstrSpecMeasurementByMstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementByMstrSpecMeasurementId =
        other.mstrSpecMeasurementByMstrSpecMeasurementId;
    if (l$mstrSpecMeasurementByMstrSpecMeasurementId !=
        lOther$mstrSpecMeasurementByMstrSpecMeasurementId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRfe
    on Query$SpecMeasurementPageRfe {
  CopyWith$Query$SpecMeasurementPageRfe<Query$SpecMeasurementPageRfe>
  get copyWith => CopyWith$Query$SpecMeasurementPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$SpecMeasurementPageRfe<TRes> {
  factory CopyWith$Query$SpecMeasurementPageRfe(
    Query$SpecMeasurementPageRfe instance,
    TRes Function(Query$SpecMeasurementPageRfe) then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe;

  factory CopyWith$Query$SpecMeasurementPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$SpecMeasurementPageRfe;

  TRes call({
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId?
    mstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get mstrSpecMeasurementByMstrSpecMeasurementId;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe<TRes>
    implements CopyWith$Query$SpecMeasurementPageRfe<TRes> {
  _CopyWithImpl$Query$SpecMeasurementPageRfe(this._instance, this._then);

  final Query$SpecMeasurementPageRfe _instance;

  final TRes Function(Query$SpecMeasurementPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementByMstrSpecMeasurementId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe(
      mstrSpecMeasurementByMstrSpecMeasurementId:
          mstrSpecMeasurementByMstrSpecMeasurementId == _undefined
          ? _instance.mstrSpecMeasurementByMstrSpecMeasurementId
          : (mstrSpecMeasurementByMstrSpecMeasurementId
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get mstrSpecMeasurementByMstrSpecMeasurementId {
    final local$mstrSpecMeasurementByMstrSpecMeasurementId =
        _instance.mstrSpecMeasurementByMstrSpecMeasurementId;
    return local$mstrSpecMeasurementByMstrSpecMeasurementId == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
            local$mstrSpecMeasurementByMstrSpecMeasurementId,
            (e) => call(mstrSpecMeasurementByMstrSpecMeasurementId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe<TRes>
    implements CopyWith$Query$SpecMeasurementPageRfe<TRes> {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe(this._res);

  TRes _res;

  call({
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId?
    mstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get mstrSpecMeasurementByMstrSpecMeasurementId =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.stub(
        _res,
      );
}

const documentNodeQuerySpecMeasurementPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SpecMeasurementPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrSpecMeasurementId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'languageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrSpecMeasurementByMstrSpecMeasurementId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrSpecMeasurementId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrSpecMeasurementId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrSpecMeasurementId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'measurementValue'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'sharedUnitId'),
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
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
Query$SpecMeasurementPageRfe _parserFn$Query$SpecMeasurementPageRfe(
  Map<String, dynamic> data,
) => Query$SpecMeasurementPageRfe.fromJson(data);
typedef OnQueryComplete$Query$SpecMeasurementPageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$SpecMeasurementPageRfe?,
    );

class Options$Query$SpecMeasurementPageRfe
    extends graphql.QueryOptions<Query$SpecMeasurementPageRfe> {
  Options$Query$SpecMeasurementPageRfe({
    String? operationName,
    required Variables$Query$SpecMeasurementPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SpecMeasurementPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SpecMeasurementPageRfe? onComplete,
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
                     : _parserFn$Query$SpecMeasurementPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQuerySpecMeasurementPageRfe,
         parserFn: _parserFn$Query$SpecMeasurementPageRfe,
       );

  final OnQueryComplete$Query$SpecMeasurementPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SpecMeasurementPageRfe
    extends graphql.WatchQueryOptions<Query$SpecMeasurementPageRfe> {
  WatchOptions$Query$SpecMeasurementPageRfe({
    String? operationName,
    required Variables$Query$SpecMeasurementPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SpecMeasurementPageRfe? typedOptimisticResult,
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
         document: documentNodeQuerySpecMeasurementPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SpecMeasurementPageRfe,
       );
}

class FetchMoreOptions$Query$SpecMeasurementPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SpecMeasurementPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SpecMeasurementPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySpecMeasurementPageRfe,
       );
}

extension ClientExtension$Query$SpecMeasurementPageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SpecMeasurementPageRfe>>
  query$SpecMeasurementPageRfe(
    Options$Query$SpecMeasurementPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SpecMeasurementPageRfe>
  watchQuery$SpecMeasurementPageRfe(
    WatchOptions$Query$SpecMeasurementPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$SpecMeasurementPageRfe({
    required Query$SpecMeasurementPageRfe data,
    required Variables$Query$SpecMeasurementPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerySpecMeasurementPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SpecMeasurementPageRfe? readQuery$SpecMeasurementPageRfe({
    required Variables$Query$SpecMeasurementPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySpecMeasurementPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SpecMeasurementPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SpecMeasurementPageRfe>
useQuery$SpecMeasurementPageRfe(Options$Query$SpecMeasurementPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SpecMeasurementPageRfe>
useWatchQuery$SpecMeasurementPageRfe(
  WatchOptions$Query$SpecMeasurementPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$SpecMeasurementPageRfe$Widget
    extends graphql_flutter.Query<Query$SpecMeasurementPageRfe> {
  Query$SpecMeasurementPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$SpecMeasurementPageRfe options,
    required graphql_flutter.QueryBuilder<Query$SpecMeasurementPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId({
    required this.mstrSpecMeasurementId,
    required this.measurementValue,
    required this.sharedUnitId,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.unit,
    this.$__typename = 'MstrSpecMeasurement',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurementId = json['mstrSpecMeasurementId'];
    final l$measurementValue = json['measurementValue'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$unit = json['unit'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurementId: (l$mstrSpecMeasurementId as String),
      measurementValue: (l$measurementValue as String),
      sharedUnitId: (l$sharedUnitId as String),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      unit: l$unit == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrSpecMeasurementId;

  final String measurementValue;

  final String sharedUnitId;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit?
  unit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    _resultData['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    _resultData['measurementValue'] = l$measurementValue;
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
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
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$unit = unit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      l$measurementValue,
      l$sharedUnitId,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$unit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementId = other.mstrSpecMeasurementId;
    if (l$mstrSpecMeasurementId != lOther$mstrSpecMeasurementId) {
      return false;
    }
    final l$measurementValue = measurementValue;
    final lOther$measurementValue = other.measurementValue;
    if (l$measurementValue != lOther$measurementValue) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId
    on Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit?
    unit,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
    TRes
  >
  get unit;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? unit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurementId:
          mstrSpecMeasurementId == _undefined || mstrSpecMeasurementId == null
          ? _instance.mstrSpecMeasurementId
          : (mstrSpecMeasurementId as String),
      measurementValue:
          measurementValue == _undefined || measurementValue == null
          ? _instance.measurementValue
          : (measurementValue as String),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
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
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit?
    unit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
    TRes
  >
  get unit =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels?
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit
    on Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit;

  TRes call({
    String? sharedUnitId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels.fromJson(
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
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels,
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
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
