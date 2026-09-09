import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CompanyRead {
  factory Variables$Query$CompanyRead({required String infoCompanyId}) =>
      Variables$Query$CompanyRead._({r'infoCompanyId': infoCompanyId});

  Variables$Query$CompanyRead._(this._$data);

  factory Variables$Query$CompanyRead.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = data['infoCompanyId'];
    result$data['infoCompanyId'] = (l$infoCompanyId as String);
    return Variables$Query$CompanyRead._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    result$data['infoCompanyId'] = l$infoCompanyId;
    return result$data;
  }

  CopyWith$Variables$Query$CompanyRead<Variables$Query$CompanyRead>
  get copyWith => CopyWith$Variables$Query$CompanyRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CompanyRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    return Object.hashAll([l$infoCompanyId]);
  }
}

abstract class CopyWith$Variables$Query$CompanyRead<TRes> {
  factory CopyWith$Variables$Query$CompanyRead(
    Variables$Query$CompanyRead instance,
    TRes Function(Variables$Query$CompanyRead) then,
  ) = _CopyWithImpl$Variables$Query$CompanyRead;

  factory CopyWith$Variables$Query$CompanyRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CompanyRead;

  TRes call({String? infoCompanyId});
}

class _CopyWithImpl$Variables$Query$CompanyRead<TRes>
    implements CopyWith$Variables$Query$CompanyRead<TRes> {
  _CopyWithImpl$Variables$Query$CompanyRead(this._instance, this._then);

  final Variables$Query$CompanyRead _instance;

  final TRes Function(Variables$Query$CompanyRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? infoCompanyId = _undefined}) => _then(
    Variables$Query$CompanyRead._({
      ..._instance._$data,
      if (infoCompanyId != _undefined && infoCompanyId != null)
        'infoCompanyId': (infoCompanyId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CompanyRead<TRes>
    implements CopyWith$Variables$Query$CompanyRead<TRes> {
  _CopyWithStubImpl$Variables$Query$CompanyRead(this._res);

  TRes _res;

  call({String? infoCompanyId}) => _res;
}

class Query$CompanyRead {
  Query$CompanyRead({
    this.infoCompanyByInfoCompanyId,
    this.$__typename = 'Query',
  });

  factory Query$CompanyRead.fromJson(Map<String, dynamic> json) {
    final l$infoCompanyByInfoCompanyId = json['infoCompanyByInfoCompanyId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead(
      infoCompanyByInfoCompanyId: l$infoCompanyByInfoCompanyId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId.fromJson(
              (l$infoCompanyByInfoCompanyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompanyRead$infoCompanyByInfoCompanyId?
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
    if (other is! Query$CompanyRead || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CompanyRead on Query$CompanyRead {
  CopyWith$Query$CompanyRead<Query$CompanyRead> get copyWith =>
      CopyWith$Query$CompanyRead(this, (i) => i);
}

abstract class CopyWith$Query$CompanyRead<TRes> {
  factory CopyWith$Query$CompanyRead(
    Query$CompanyRead instance,
    TRes Function(Query$CompanyRead) then,
  ) = _CopyWithImpl$Query$CompanyRead;

  factory CopyWith$Query$CompanyRead.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyRead;

  TRes call({
    Query$CompanyRead$infoCompanyByInfoCompanyId? infoCompanyByInfoCompanyId,
    String? $__typename,
  });
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId;
}

class _CopyWithImpl$Query$CompanyRead<TRes>
    implements CopyWith$Query$CompanyRead<TRes> {
  _CopyWithImpl$Query$CompanyRead(this._instance, this._then);

  final Query$CompanyRead _instance;

  final TRes Function(Query$CompanyRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyByInfoCompanyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead(
      infoCompanyByInfoCompanyId: infoCompanyByInfoCompanyId == _undefined
          ? _instance.infoCompanyByInfoCompanyId
          : (infoCompanyByInfoCompanyId
                as Query$CompanyRead$infoCompanyByInfoCompanyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId {
    final local$infoCompanyByInfoCompanyId =
        _instance.infoCompanyByInfoCompanyId;
    return local$infoCompanyByInfoCompanyId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId(
            local$infoCompanyByInfoCompanyId,
            (e) => call(infoCompanyByInfoCompanyId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyRead<TRes>
    implements CopyWith$Query$CompanyRead<TRes> {
  _CopyWithStubImpl$Query$CompanyRead(this._res);

  TRes _res;

  call({
    Query$CompanyRead$infoCompanyByInfoCompanyId? infoCompanyByInfoCompanyId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes>
  get infoCompanyByInfoCompanyId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId.stub(_res);
}

const documentNodeQueryCompanyRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CompanyRead'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoCompanyId')),
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
                  name: NameNode(value: 'ceo'),
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
                              name: NameNode(value: 'ja'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'en'),
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
                              name: NameNode(value: 'ja'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'en'),
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
                        name: NameNode(value: 'zipCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address2'),
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
                  name: NameNode(value: 'infoStaffsByInfoCompanyId'),
                  alias: null,
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'infoOfficesByInfoCompanyId'),
                  alias: null,
                  arguments: [],
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
                              name: NameNode(value: 'infoOfficeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedAppellationBySharedAppellationsId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
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
                                          name: NameNode(value: 'ja'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'en'),
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
                    value:
                        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                  ),
                  alias: null,
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
                        name: NameNode(value: 'sharedAppellationsId'),
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
  ],
);
Query$CompanyRead _parserFn$Query$CompanyRead(Map<String, dynamic> data) =>
    Query$CompanyRead.fromJson(data);
typedef OnQueryComplete$Query$CompanyRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CompanyRead?);

class Options$Query$CompanyRead
    extends graphql.QueryOptions<Query$CompanyRead> {
  Options$Query$CompanyRead({
    String? operationName,
    required Variables$Query$CompanyRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CompanyRead? onComplete,
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
                 data == null ? null : _parserFn$Query$CompanyRead(data),
               ),
         onError: onError,
         document: documentNodeQueryCompanyRead,
         parserFn: _parserFn$Query$CompanyRead,
       );

  final OnQueryComplete$Query$CompanyRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CompanyRead
    extends graphql.WatchQueryOptions<Query$CompanyRead> {
  WatchOptions$Query$CompanyRead({
    String? operationName,
    required Variables$Query$CompanyRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyRead? typedOptimisticResult,
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
         document: documentNodeQueryCompanyRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CompanyRead,
       );
}

class FetchMoreOptions$Query$CompanyRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CompanyRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CompanyRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryCompanyRead,
       );
}

extension ClientExtension$Query$CompanyRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CompanyRead>> query$CompanyRead(
    Options$Query$CompanyRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$CompanyRead> watchQuery$CompanyRead(
    WatchOptions$Query$CompanyRead options,
  ) => this.watchQuery(options);

  void writeQuery$CompanyRead({
    required Query$CompanyRead data,
    required Variables$Query$CompanyRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryCompanyRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CompanyRead? readQuery$CompanyRead({
    required Variables$Query$CompanyRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCompanyRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CompanyRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CompanyRead> useQuery$CompanyRead(
  Options$Query$CompanyRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CompanyRead> useWatchQuery$CompanyRead(
  WatchOptions$Query$CompanyRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$CompanyRead$Widget
    extends graphql_flutter.Query<Query$CompanyRead> {
  Query$CompanyRead$Widget({
    widgets.Key? key,
    required Options$Query$CompanyRead options,
    required graphql_flutter.QueryBuilder<Query$CompanyRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$CompanyRead$infoCompanyByInfoCompanyId {
  Query$CompanyRead$infoCompanyByInfoCompanyId({
    required this.infoCompanyId,
    this.webPage,
    this.ceo,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    required this.infoStaffsByInfoCompanyId,
    required this.infoOfficesByInfoCompanyId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'InfoCompany',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompanyId = json['infoCompanyId'];
    final l$webPage = json['webPage'];
    final l$ceo = json['ceo'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$infoStaffsByInfoCompanyId = json['infoStaffsByInfoCompanyId'];
    final l$infoOfficesByInfoCompanyId = json['infoOfficesByInfoCompanyId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      infoStaffsByInfoCompanyId:
          Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId.fromJson(
            (l$infoStaffsByInfoCompanyId as Map<String, dynamic>),
          ),
      infoOfficesByInfoCompanyId:
          Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId.fromJson(
            (l$infoOfficesByInfoCompanyId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoCompanyId;

  final String? webPage;

  final String? ceo;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId
  infoStaffsByInfoCompanyId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId
  infoOfficesByInfoCompanyId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$webPage = webPage;
    _resultData['webPage'] = l$webPage;
    final l$ceo = ceo;
    _resultData['ceo'] = l$ceo;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    _resultData['infoStaffsByInfoCompanyId'] = l$infoStaffsByInfoCompanyId
        .toJson();
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    _resultData['infoOfficesByInfoCompanyId'] = l$infoOfficesByInfoCompanyId
        .toJson();
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    _resultData['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'] =
        l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$infoAddressByInfoAddressId,
      l$infoStaffsByInfoCompanyId,
      l$infoOfficesByInfoCompanyId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyRead$infoCompanyByInfoCompanyId ||
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
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (l$ceo != lOther$ceo) {
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final lOther$sharedAppellationBySharedAppellationsId =
        other.sharedAppellationBySharedAppellationsId;
    if (l$sharedAppellationBySharedAppellationsId !=
        lOther$sharedAppellationBySharedAppellationsId) {
      return false;
    }
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final lOther$infoAddressByInfoAddressId = other.infoAddressByInfoAddressId;
    if (l$infoAddressByInfoAddressId != lOther$infoAddressByInfoAddressId) {
      return false;
    }
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    final lOther$infoStaffsByInfoCompanyId = other.infoStaffsByInfoCompanyId;
    if (l$infoStaffsByInfoCompanyId != lOther$infoStaffsByInfoCompanyId) {
      return false;
    }
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    final lOther$infoOfficesByInfoCompanyId = other.infoOfficesByInfoCompanyId;
    if (l$infoOfficesByInfoCompanyId != lOther$infoOfficesByInfoCompanyId) {
      return false;
    }
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final lOther$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        other.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    if (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId !=
        lOther$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId
    on Query$CompanyRead$infoCompanyByInfoCompanyId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<
    Query$CompanyRead$infoCompanyByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId(this, (i) => i);
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId(
    Query$CompanyRead$infoCompanyByInfoCompanyId instance,
    TRes Function(Query$CompanyRead$infoCompanyByInfoCompanyId) then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId?
    infoStaffsByInfoCompanyId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId?
    infoOfficesByInfoCompanyId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId;
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId;
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes>
    implements CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes> {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId _instance;

  final TRes Function(Query$CompanyRead$infoCompanyByInfoCompanyId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? infoStaffsByInfoCompanyId = _undefined,
    Object? infoOfficesByInfoCompanyId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId(
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      webPage: webPage == _undefined ? _instance.webPage : (webPage as String?),
      ceo: ceo == _undefined ? _instance.ceo : (ceo as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?),
      infoStaffsByInfoCompanyId:
          infoStaffsByInfoCompanyId == _undefined ||
              infoStaffsByInfoCompanyId == null
          ? _instance.infoStaffsByInfoCompanyId
          : (infoStaffsByInfoCompanyId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId),
      infoOfficesByInfoCompanyId:
          infoOfficesByInfoCompanyId == _undefined ||
              infoOfficesByInfoCompanyId == null
          ? _instance.infoOfficesByInfoCompanyId
          : (infoOfficesByInfoCompanyId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId {
    final local$infoStaffsByInfoCompanyId = _instance.infoStaffsByInfoCompanyId;
    return CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
      local$infoStaffsByInfoCompanyId,
      (e) => call(infoStaffsByInfoCompanyId: e),
    );
  }

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId {
    final local$infoOfficesByInfoCompanyId =
        _instance.infoOfficesByInfoCompanyId;
    return CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
      local$infoOfficesByInfoCompanyId,
      (e) => call(infoOfficesByInfoCompanyId: e),
    );
  }

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes>
    implements CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId<TRes> {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId?
    infoStaffsByInfoCompanyId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId?
    infoOfficesByInfoCompanyId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
        _res,
      );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId.stub(
        _res,
      );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId.stub(
        _res,
      );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.$__typename = 'InfoAddress',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      zipCode: (l$zipCode as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? zipCode;

  final String? address1;

  final String? address2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$zipCode,
      l$address1,
      l$address2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
    on Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? $__typename,
  }) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId({
    required this.totalCount,
    this.$__typename = 'InfoStaffsConnection',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$totalCount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId
    on Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoStaffsByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId({
    required this.nodes,
    this.$__typename = 'InfoOfficesConnection',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
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
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId ||
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

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId
    on Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId;

  TRes call({
    List<
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
          Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
          Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes({
    required this.infoOfficeId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoOffice',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: (l$infoOfficeId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoOfficeId;

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
    on Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes;

  TRes call({
    String? infoOfficeId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? infoOfficeId,
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedDictionaryBySharedDictionaryNameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      sharedAppellationsId: (l$sharedAppellationsId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? sharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$sharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      sharedAppellationsId: sharedAppellationsId == _undefined
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyRead$infoCompanyByInfoCompanyId$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  }) => _res;
}

class Variables$Query$CompanyReadUpdaterAppellation {
  factory Variables$Query$CompanyReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$CompanyReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$CompanyReadUpdaterAppellation._(this._$data);

  factory Variables$Query$CompanyReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$CompanyReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$CompanyReadUpdaterAppellation<
    Variables$Query$CompanyReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$CompanyReadUpdaterAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CompanyReadUpdaterAppellation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    return Object.hashAll([l$sharedAppellationsId]);
  }
}

abstract class CopyWith$Variables$Query$CompanyReadUpdaterAppellation<TRes> {
  factory CopyWith$Variables$Query$CompanyReadUpdaterAppellation(
    Variables$Query$CompanyReadUpdaterAppellation instance,
    TRes Function(Variables$Query$CompanyReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$CompanyReadUpdaterAppellation;

  factory CopyWith$Variables$Query$CompanyReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$CompanyReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$CompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$CompanyReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$CompanyReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$CompanyReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$CompanyReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$CompanyReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$CompanyReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$CompanyReadUpdaterAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$CompanyReadUpdaterAppellation {
  Query$CompanyReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$CompanyReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyReadUpdaterAppellation ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyReadUpdaterAppellation
    on Query$CompanyReadUpdaterAppellation {
  CopyWith$Query$CompanyReadUpdaterAppellation<
    Query$CompanyReadUpdaterAppellation
  >
  get copyWith => CopyWith$Query$CompanyReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$CompanyReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$CompanyReadUpdaterAppellation(
    Query$CompanyReadUpdaterAppellation instance,
    TRes Function(Query$CompanyReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$CompanyReadUpdaterAppellation;

  factory CopyWith$Query$CompanyReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation;

  TRes call({
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$CompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Query$CompanyReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$CompanyReadUpdaterAppellation(this._instance, this._then);

  final Query$CompanyReadUpdaterAppellation _instance;

  final TRes Function(Query$CompanyReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Query$CompanyReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryCompanyReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CompanyReadUpdaterAppellation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedAppellationsId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'sharedAppellationBySharedAppellationsId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sharedAppellationsId'),
                value: VariableNode(
                  name: NameNode(value: 'sharedAppellationsId'),
                ),
              ),
            ],
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
                        name: NameNode(value: 'ja'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'en'),
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
                  name: NameNode(
                    value: 'sharedDictionaryBySharedDictionaryPronunciationId',
                  ),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'ja'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'en'),
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
  ],
);
Query$CompanyReadUpdaterAppellation
_parserFn$Query$CompanyReadUpdaterAppellation(Map<String, dynamic> data) =>
    Query$CompanyReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$CompanyReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$CompanyReadUpdaterAppellation?,
    );

class Options$Query$CompanyReadUpdaterAppellation
    extends graphql.QueryOptions<Query$CompanyReadUpdaterAppellation> {
  Options$Query$CompanyReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$CompanyReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CompanyReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$CompanyReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryCompanyReadUpdaterAppellation,
         parserFn: _parserFn$Query$CompanyReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$CompanyReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CompanyReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$CompanyReadUpdaterAppellation> {
  WatchOptions$Query$CompanyReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$CompanyReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CompanyReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryCompanyReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CompanyReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$CompanyReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CompanyReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CompanyReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryCompanyReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$CompanyReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CompanyReadUpdaterAppellation>>
  query$CompanyReadUpdaterAppellation(
    Options$Query$CompanyReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$CompanyReadUpdaterAppellation>
  watchQuery$CompanyReadUpdaterAppellation(
    WatchOptions$Query$CompanyReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$CompanyReadUpdaterAppellation({
    required Query$CompanyReadUpdaterAppellation data,
    required Variables$Query$CompanyReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryCompanyReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CompanyReadUpdaterAppellation? readQuery$CompanyReadUpdaterAppellation({
    required Variables$Query$CompanyReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryCompanyReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$CompanyReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CompanyReadUpdaterAppellation>
useQuery$CompanyReadUpdaterAppellation(
  Options$Query$CompanyReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CompanyReadUpdaterAppellation>
useWatchQuery$CompanyReadUpdaterAppellation(
  WatchOptions$Query$CompanyReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$CompanyReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$CompanyReadUpdaterAppellation> {
  Query$CompanyReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$CompanyReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<Query$CompanyReadUpdaterAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
