import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OrderDetailRead {
  factory Variables$Query$OrderDetailRead({
    required int first,
    int? offset,
    Input$TransOrderDetailCondition? condition,
    List<Enum$TransOrderDetailsOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$OrderDetailRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$OrderDetailRead._(this._$data);

  factory Variables$Query$OrderDetailRead.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : Input$TransOrderDetailCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransOrderDetailsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$OrderDetailRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransOrderDetailCondition? get condition =>
      (_$data['condition'] as Input$TransOrderDetailCondition?);

  List<Enum$TransOrderDetailsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransOrderDetailsOrderBy>?);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  bool? get removed => (_$data['removed'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$TransOrderDetailsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$OrderDetailRead<Variables$Query$OrderDetailRead>
  get copyWith => CopyWith$Variables$Query$OrderDetailRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderDetailRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    final l$removed = removed;
    final lOther$removed = other.removed;
    if (_$data.containsKey('removed') != other._$data.containsKey('removed')) {
      return false;
    }
    if (l$removed != lOther$removed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$offset = offset;
    final l$condition = condition;
    final l$orderBy = orderBy;
    final l$ja = ja;
    final l$en = en;
    final l$removed = removed;
    return Object.hashAll([
      l$first,
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
                ? null
                : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      l$ja,
      l$en,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$OrderDetailRead<TRes> {
  factory CopyWith$Variables$Query$OrderDetailRead(
    Variables$Query$OrderDetailRead instance,
    TRes Function(Variables$Query$OrderDetailRead) then,
  ) = _CopyWithImpl$Variables$Query$OrderDetailRead;

  factory CopyWith$Variables$Query$OrderDetailRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderDetailRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransOrderDetailCondition? condition,
    List<Enum$TransOrderDetailsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$OrderDetailRead<TRes>
    implements CopyWith$Variables$Query$OrderDetailRead<TRes> {
  _CopyWithImpl$Variables$Query$OrderDetailRead(this._instance, this._then);

  final Variables$Query$OrderDetailRead _instance;

  final TRes Function(Variables$Query$OrderDetailRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$OrderDetailRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$TransOrderDetailCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransOrderDetailsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderDetailRead<TRes>
    implements CopyWith$Variables$Query$OrderDetailRead<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderDetailRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransOrderDetailCondition? condition,
    List<Enum$TransOrderDetailsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$OrderDetailRead {
  Query$OrderDetailRead({
    this.allTransOrderDetails,
    this.$__typename = 'Query',
  });

  factory Query$OrderDetailRead.fromJson(Map<String, dynamic> json) {
    final l$allTransOrderDetails = json['allTransOrderDetails'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead(
      allTransOrderDetails: l$allTransOrderDetails == null
          ? null
          : Query$OrderDetailRead$allTransOrderDetails.fromJson(
              (l$allTransOrderDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderDetailRead$allTransOrderDetails? allTransOrderDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransOrderDetails = allTransOrderDetails;
    _resultData['allTransOrderDetails'] = l$allTransOrderDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransOrderDetails = allTransOrderDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransOrderDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderDetailRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransOrderDetails = allTransOrderDetails;
    final lOther$allTransOrderDetails = other.allTransOrderDetails;
    if (l$allTransOrderDetails != lOther$allTransOrderDetails) {
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

extension UtilityExtension$Query$OrderDetailRead on Query$OrderDetailRead {
  CopyWith$Query$OrderDetailRead<Query$OrderDetailRead> get copyWith =>
      CopyWith$Query$OrderDetailRead(this, (i) => i);
}

abstract class CopyWith$Query$OrderDetailRead<TRes> {
  factory CopyWith$Query$OrderDetailRead(
    Query$OrderDetailRead instance,
    TRes Function(Query$OrderDetailRead) then,
  ) = _CopyWithImpl$Query$OrderDetailRead;

  factory CopyWith$Query$OrderDetailRead.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderDetailRead;

  TRes call({
    Query$OrderDetailRead$allTransOrderDetails? allTransOrderDetails,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes>
  get allTransOrderDetails;
}

class _CopyWithImpl$Query$OrderDetailRead<TRes>
    implements CopyWith$Query$OrderDetailRead<TRes> {
  _CopyWithImpl$Query$OrderDetailRead(this._instance, this._then);

  final Query$OrderDetailRead _instance;

  final TRes Function(Query$OrderDetailRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransOrderDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead(
      allTransOrderDetails: allTransOrderDetails == _undefined
          ? _instance.allTransOrderDetails
          : (allTransOrderDetails
                as Query$OrderDetailRead$allTransOrderDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes>
  get allTransOrderDetails {
    final local$allTransOrderDetails = _instance.allTransOrderDetails;
    return local$allTransOrderDetails == null
        ? CopyWith$Query$OrderDetailRead$allTransOrderDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailRead$allTransOrderDetails(
            local$allTransOrderDetails,
            (e) => call(allTransOrderDetails: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailRead<TRes>
    implements CopyWith$Query$OrderDetailRead<TRes> {
  _CopyWithStubImpl$Query$OrderDetailRead(this._res);

  TRes _res;

  call({
    Query$OrderDetailRead$allTransOrderDetails? allTransOrderDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes>
  get allTransOrderDetails =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails.stub(_res);
}

const documentNodeQueryOrderDetailRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderDetailRead'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'offset')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'condition')),
          type: NamedTypeNode(
            name: NameNode(value: 'TransOrderDetailCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransOrderDetailsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ListValueNode(
              values: [EnumValueNode(name: NameNode(value: 'PRIMARY_KEY_ASC'))],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ja')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'en')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'removed')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allTransOrderDetails'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'offset'),
                value: VariableNode(name: NameNode(value: 'offset')),
              ),
              ArgumentNode(
                name: NameNode(value: 'condition'),
                value: VariableNode(name: NameNode(value: 'condition')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'orderBy')),
              ),
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'remove'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equalTo'),
                            value: VariableNode(
                              name: NameNode(value: 'removed'),
                            ),
                          ),
                        ],
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
                        name: NameNode(value: 'transOrderDetailId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transOrderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'historyMstrItemId'),
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
                        name: NameNode(value: 'quantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cost'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deliveryDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deadline'),
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
                          value:
                              'historyMstrItemByHistoryMstrItemIdAndMstrItemId',
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
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'identification'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'labelCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mstrManufacturerId'),
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
          FieldNode(
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
Query$OrderDetailRead _parserFn$Query$OrderDetailRead(
  Map<String, dynamic> data,
) => Query$OrderDetailRead.fromJson(data);
typedef OnQueryComplete$Query$OrderDetailRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OrderDetailRead?);

class Options$Query$OrderDetailRead
    extends graphql.QueryOptions<Query$OrderDetailRead> {
  Options$Query$OrderDetailRead({
    String? operationName,
    required Variables$Query$OrderDetailRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderDetailRead? onComplete,
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
                 data == null ? null : _parserFn$Query$OrderDetailRead(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderDetailRead,
         parserFn: _parserFn$Query$OrderDetailRead,
       );

  final OnQueryComplete$Query$OrderDetailRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderDetailRead
    extends graphql.WatchQueryOptions<Query$OrderDetailRead> {
  WatchOptions$Query$OrderDetailRead({
    String? operationName,
    required Variables$Query$OrderDetailRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailRead? typedOptimisticResult,
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
         document: documentNodeQueryOrderDetailRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderDetailRead,
       );
}

class FetchMoreOptions$Query$OrderDetailRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderDetailRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderDetailRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrderDetailRead,
       );
}

extension ClientExtension$Query$OrderDetailRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderDetailRead>> query$OrderDetailRead(
    Options$Query$OrderDetailRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrderDetailRead> watchQuery$OrderDetailRead(
    WatchOptions$Query$OrderDetailRead options,
  ) => this.watchQuery(options);

  void writeQuery$OrderDetailRead({
    required Query$OrderDetailRead data,
    required Variables$Query$OrderDetailRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOrderDetailRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderDetailRead? readQuery$OrderDetailRead({
    required Variables$Query$OrderDetailRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrderDetailRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderDetailRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderDetailRead> useQuery$OrderDetailRead(
  Options$Query$OrderDetailRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderDetailRead> useWatchQuery$OrderDetailRead(
  WatchOptions$Query$OrderDetailRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrderDetailRead$Widget
    extends graphql_flutter.Query<Query$OrderDetailRead> {
  Query$OrderDetailRead$Widget({
    widgets.Key? key,
    required Options$Query$OrderDetailRead options,
    required graphql_flutter.QueryBuilder<Query$OrderDetailRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrderDetailRead$allTransOrderDetails {
  Query$OrderDetailRead$allTransOrderDetails({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransOrderDetailsConnection',
  });

  factory Query$OrderDetailRead$allTransOrderDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead$allTransOrderDetails(
      totalCount: (l$totalCount as int),
      pageInfo: Query$OrderDetailRead$allTransOrderDetails$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OrderDetailRead$allTransOrderDetails$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$OrderDetailRead$allTransOrderDetails$pageInfo pageInfo;

  final List<Query$OrderDetailRead$allTransOrderDetails$nodes?> nodes;

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
    if (other is! Query$OrderDetailRead$allTransOrderDetails ||
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

extension UtilityExtension$Query$OrderDetailRead$allTransOrderDetails
    on Query$OrderDetailRead$allTransOrderDetails {
  CopyWith$Query$OrderDetailRead$allTransOrderDetails<
    Query$OrderDetailRead$allTransOrderDetails
  >
  get copyWith =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails(this, (i) => i);
}

abstract class CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes> {
  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails(
    Query$OrderDetailRead$allTransOrderDetails instance,
    TRes Function(Query$OrderDetailRead$allTransOrderDetails) then,
  ) = _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails;

  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails;

  TRes call({
    int? totalCount,
    Query$OrderDetailRead$allTransOrderDetails$pageInfo? pageInfo,
    List<Query$OrderDetailRead$allTransOrderDetails$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$OrderDetailRead$allTransOrderDetails$nodes?> Function(
      Iterable<
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<
          Query$OrderDetailRead$allTransOrderDetails$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails<TRes>
    implements CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes> {
  _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails(
    this._instance,
    this._then,
  );

  final Query$OrderDetailRead$allTransOrderDetails _instance;

  final TRes Function(Query$OrderDetailRead$allTransOrderDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead$allTransOrderDetails(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OrderDetailRead$allTransOrderDetails$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$OrderDetailRead$allTransOrderDetails$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$OrderDetailRead$allTransOrderDetails$nodes?> Function(
      Iterable<
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<
          Query$OrderDetailRead$allTransOrderDetails$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails<TRes>
    implements CopyWith$Query$OrderDetailRead$allTransOrderDetails<TRes> {
  _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$OrderDetailRead$allTransOrderDetails$pageInfo? pageInfo,
    List<Query$OrderDetailRead$allTransOrderDetails$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$OrderDetailRead$allTransOrderDetails$pageInfo {
  Query$OrderDetailRead$allTransOrderDetails$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderDetailRead$allTransOrderDetails$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead$allTransOrderDetails$pageInfo(
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
    if (other is! Query$OrderDetailRead$allTransOrderDetails$pageInfo ||
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

extension UtilityExtension$Query$OrderDetailRead$allTransOrderDetails$pageInfo
    on Query$OrderDetailRead$allTransOrderDetails$pageInfo {
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<
    Query$OrderDetailRead$allTransOrderDetails$pageInfo
  >
  get copyWith => CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<
  TRes
> {
  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo(
    Query$OrderDetailRead$allTransOrderDetails$pageInfo instance,
    TRes Function(Query$OrderDetailRead$allTransOrderDetails$pageInfo) then,
  ) = _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo;

  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes> {
  _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderDetailRead$allTransOrderDetails$pageInfo _instance;

  final TRes Function(Query$OrderDetailRead$allTransOrderDetails$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead$allTransOrderDetails$pageInfo(
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

class _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo<
  TRes
>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$OrderDetailRead$allTransOrderDetails$nodes {
  Query$OrderDetailRead$allTransOrderDetails$nodes({
    required this.transOrderDetailId,
    required this.transOrderId,
    required this.historyMstrItemId,
    required this.mstrItemId,
    this.quantity,
    this.cost,
    this.deliveryDate,
    this.deadline,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.historyMstrItemByHistoryMstrItemIdAndMstrItemId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'TransOrderDetail',
  });

  factory Query$OrderDetailRead$allTransOrderDetails$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$transOrderId = json['transOrderId'];
    final l$historyMstrItemId = json['historyMstrItemId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$quantity = json['quantity'];
    final l$cost = json['cost'];
    final l$deliveryDate = json['deliveryDate'];
    final l$deadline = json['deadline'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        json['historyMstrItemByHistoryMstrItemIdAndMstrItemId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead$allTransOrderDetails$nodes(
      transOrderDetailId: (l$transOrderDetailId as String),
      transOrderId: (l$transOrderId as String),
      historyMstrItemId: (l$historyMstrItemId as String),
      mstrItemId: (l$mstrItemId as String),
      quantity: (l$quantity as String?),
      cost: (l$cost as String?),
      deliveryDate: (l$deliveryDate as String?),
      deadline: (l$deadline as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      historyMstrItemByHistoryMstrItemIdAndMstrItemId:
          l$historyMstrItemByHistoryMstrItemIdAndMstrItemId == null
          ? null
          : Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId.fromJson(
              (l$historyMstrItemByHistoryMstrItemIdAndMstrItemId
                  as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOrderDetailId;

  final String transOrderId;

  final String historyMstrItemId;

  final String mstrItemId;

  final String? quantity;

  final String? cost;

  final String? deliveryDate;

  final String? deadline;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId?
  historyMstrItemByHistoryMstrItemIdAndMstrItemId;

  final Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$historyMstrItemId = historyMstrItemId;
    _resultData['historyMstrItemId'] = l$historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$cost = cost;
    _resultData['cost'] = l$cost;
    final l$deliveryDate = deliveryDate;
    _resultData['deliveryDate'] = l$deliveryDate;
    final l$deadline = deadline;
    _resultData['deadline'] = l$deadline;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        historyMstrItemByHistoryMstrItemIdAndMstrItemId;
    _resultData['historyMstrItemByHistoryMstrItemIdAndMstrItemId'] =
        l$historyMstrItemByHistoryMstrItemIdAndMstrItemId?.toJson();
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
    final l$transOrderDetailId = transOrderDetailId;
    final l$transOrderId = transOrderId;
    final l$historyMstrItemId = historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    final l$quantity = quantity;
    final l$cost = cost;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        historyMstrItemByHistoryMstrItemIdAndMstrItemId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOrderDetailId,
      l$transOrderId,
      l$historyMstrItemId,
      l$mstrItemId,
      l$quantity,
      l$cost,
      l$deliveryDate,
      l$deadline,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$historyMstrItemByHistoryMstrItemIdAndMstrItemId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderDetailRead$allTransOrderDetails$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$historyMstrItemId = historyMstrItemId;
    final lOther$historyMstrItemId = other.historyMstrItemId;
    if (l$historyMstrItemId != lOther$historyMstrItemId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$deliveryDate = deliveryDate;
    final lOther$deliveryDate = other.deliveryDate;
    if (l$deliveryDate != lOther$deliveryDate) {
      return false;
    }
    final l$deadline = deadline;
    final lOther$deadline = other.deadline;
    if (l$deadline != lOther$deadline) {
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
    final l$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        historyMstrItemByHistoryMstrItemIdAndMstrItemId;
    final lOther$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        other.historyMstrItemByHistoryMstrItemIdAndMstrItemId;
    if (l$historyMstrItemByHistoryMstrItemIdAndMstrItemId !=
        lOther$historyMstrItemByHistoryMstrItemIdAndMstrItemId) {
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

extension UtilityExtension$Query$OrderDetailRead$allTransOrderDetails$nodes
    on Query$OrderDetailRead$allTransOrderDetails$nodes {
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<
    Query$OrderDetailRead$allTransOrderDetails$nodes
  >
  get copyWith =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes(this, (i) => i);
}

abstract class CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<TRes> {
  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes(
    Query$OrderDetailRead$allTransOrderDetails$nodes instance,
    TRes Function(Query$OrderDetailRead$allTransOrderDetails$nodes) then,
  ) = _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes;

  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes;

  TRes call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId?
    historyMstrItemByHistoryMstrItemIdAndMstrItemId,
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryMstrItemIdAndMstrItemId;
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes<TRes>
    implements CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<TRes> {
  _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes(
    this._instance,
    this._then,
  );

  final Query$OrderDetailRead$allTransOrderDetails$nodes _instance;

  final TRes Function(Query$OrderDetailRead$allTransOrderDetails$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderDetailId = _undefined,
    Object? transOrderId = _undefined,
    Object? historyMstrItemId = _undefined,
    Object? mstrItemId = _undefined,
    Object? quantity = _undefined,
    Object? cost = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? historyMstrItemByHistoryMstrItemIdAndMstrItemId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead$allTransOrderDetails$nodes(
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      historyMstrItemId:
          historyMstrItemId == _undefined || historyMstrItemId == null
          ? _instance.historyMstrItemId
          : (historyMstrItemId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      cost: cost == _undefined ? _instance.cost : (cost as String?),
      deliveryDate: deliveryDate == _undefined
          ? _instance.deliveryDate
          : (deliveryDate as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      historyMstrItemByHistoryMstrItemIdAndMstrItemId:
          historyMstrItemByHistoryMstrItemIdAndMstrItemId == _undefined
          ? _instance.historyMstrItemByHistoryMstrItemIdAndMstrItemId
          : (historyMstrItemByHistoryMstrItemIdAndMstrItemId
                as Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryMstrItemIdAndMstrItemId {
    final local$historyMstrItemByHistoryMstrItemIdAndMstrItemId =
        _instance.historyMstrItemByHistoryMstrItemIdAndMstrItemId;
    return local$historyMstrItemByHistoryMstrItemIdAndMstrItemId == null
        ? CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
            local$historyMstrItemByHistoryMstrItemIdAndMstrItemId,
            (e) => call(historyMstrItemByHistoryMstrItemIdAndMstrItemId: e),
          );
  }

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes<TRes>
    implements CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes<TRes> {
  _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes(this._res);

  TRes _res;

  call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId?
    historyMstrItemByHistoryMstrItemIdAndMstrItemId,
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryMstrItemIdAndMstrItemId =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId.stub(
        _res,
      );

  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId {
  Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId({
    required this.historyId,
    required this.code,
    this.identification,
    this.labelCode,
    this.mstrManufacturerId,
    this.$__typename = 'HistoryMstrItem',
  });

  factory Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$labelCode = json['labelCode'];
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
      historyId: (l$historyId as String),
      code: (l$code as String),
      identification: (l$identification as String?),
      labelCode: (l$labelCode as String?),
      mstrManufacturerId: (l$mstrManufacturerId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String code;

  final String? identification;

  final String? labelCode;

  final String? mstrManufacturerId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$code = code;
    final l$identification = identification;
    final l$labelCode = labelCode;
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$code,
      l$identification,
      l$labelCode,
      l$mstrManufacturerId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (l$identification != lOther$identification) {
      return false;
    }
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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

extension UtilityExtension$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId
    on
        Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId {
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
  TRes
> {
  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId
    instance,
    TRes Function(
      Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId;

  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId;

  TRes call({
    String? historyId,
    String? code,
    String? identification,
    String? labelCode,
    String? mstrManufacturerId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId
  _instance;

  final TRes Function(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? labelCode = _undefined,
    Object? mstrManufacturerId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      mstrManufacturerId: mstrManufacturerId == _undefined
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyMstrItemByHistoryMstrItemIdAndMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? code,
    String? identification,
    String? labelCode,
    String? mstrManufacturerId,
    String? $__typename,
  }) => _res;
}

class Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      sharedAppellationsId: (l$sharedAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String sharedAppellationsId;

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
            is! Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailRead$allTransOrderDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$OrderDetailReadUpdaterAppellation {
  factory Variables$Query$OrderDetailReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$OrderDetailReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$OrderDetailReadUpdaterAppellation._(this._$data);

  factory Variables$Query$OrderDetailReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$OrderDetailReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation<
    Variables$Query$OrderDetailReadUpdaterAppellation
  >
  get copyWith => CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderDetailReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation(
    Variables$Query$OrderDetailReadUpdaterAppellation instance,
    TRes Function(Variables$Query$OrderDetailReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$OrderDetailReadUpdaterAppellation;

  factory CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$OrderDetailReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$OrderDetailReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$OrderDetailReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderDetailReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$OrderDetailReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$OrderDetailReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderDetailReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$OrderDetailReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderDetailReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$OrderDetailReadUpdaterAppellation {
  Query$OrderDetailReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$OrderDetailReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$OrderDetailReadUpdaterAppellation ||
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

extension UtilityExtension$Query$OrderDetailReadUpdaterAppellation
    on Query$OrderDetailReadUpdaterAppellation {
  CopyWith$Query$OrderDetailReadUpdaterAppellation<
    Query$OrderDetailReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$OrderDetailReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$OrderDetailReadUpdaterAppellation(
    Query$OrderDetailReadUpdaterAppellation instance,
    TRes Function(Query$OrderDetailReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation;

  factory CopyWith$Query$OrderDetailReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation;

  TRes call({
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OrderDetailReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadUpdaterAppellation _instance;

  final TRes Function(Query$OrderDetailReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OrderDetailReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryOrderDetailReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderDetailReadUpdaterAppellation'),
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
Query$OrderDetailReadUpdaterAppellation
_parserFn$Query$OrderDetailReadUpdaterAppellation(Map<String, dynamic> data) =>
    Query$OrderDetailReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$OrderDetailReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$OrderDetailReadUpdaterAppellation?,
    );

class Options$Query$OrderDetailReadUpdaterAppellation
    extends graphql.QueryOptions<Query$OrderDetailReadUpdaterAppellation> {
  Options$Query$OrderDetailReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OrderDetailReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderDetailReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$OrderDetailReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderDetailReadUpdaterAppellation,
         parserFn: _parserFn$Query$OrderDetailReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$OrderDetailReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderDetailReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$OrderDetailReadUpdaterAppellation> {
  WatchOptions$Query$OrderDetailReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OrderDetailReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryOrderDetailReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderDetailReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$OrderDetailReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderDetailReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderDetailReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrderDetailReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$OrderDetailReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderDetailReadUpdaterAppellation>>
  query$OrderDetailReadUpdaterAppellation(
    Options$Query$OrderDetailReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrderDetailReadUpdaterAppellation>
  watchQuery$OrderDetailReadUpdaterAppellation(
    WatchOptions$Query$OrderDetailReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$OrderDetailReadUpdaterAppellation({
    required Query$OrderDetailReadUpdaterAppellation data,
    required Variables$Query$OrderDetailReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOrderDetailReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderDetailReadUpdaterAppellation?
  readQuery$OrderDetailReadUpdaterAppellation({
    required Variables$Query$OrderDetailReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrderDetailReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OrderDetailReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderDetailReadUpdaterAppellation>
useQuery$OrderDetailReadUpdaterAppellation(
  Options$Query$OrderDetailReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderDetailReadUpdaterAppellation>
useWatchQuery$OrderDetailReadUpdaterAppellation(
  WatchOptions$Query$OrderDetailReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrderDetailReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$OrderDetailReadUpdaterAppellation> {
  Query$OrderDetailReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$OrderDetailReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$OrderDetailReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Variables$Query$OrderDetailReadManufacturer {
  factory Variables$Query$OrderDetailReadManufacturer({
    required String mstrManufacturerId,
    required bool ja,
    required bool en,
  }) => Variables$Query$OrderDetailReadManufacturer._({
    r'mstrManufacturerId': mstrManufacturerId,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$OrderDetailReadManufacturer._(this._$data);

  factory Variables$Query$OrderDetailReadManufacturer.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = data['mstrManufacturerId'];
    result$data['mstrManufacturerId'] = (l$mstrManufacturerId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$OrderDetailReadManufacturer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrManufacturerId => (_$data['mstrManufacturerId'] as String);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    result$data['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$OrderDetailReadManufacturer<
    Variables$Query$OrderDetailReadManufacturer
  >
  get copyWith =>
      CopyWith$Variables$Query$OrderDetailReadManufacturer(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderDetailReadManufacturer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$ja = ja;
    final l$en = en;
    return Object.hashAll([l$mstrManufacturerId, l$ja, l$en]);
  }
}

abstract class CopyWith$Variables$Query$OrderDetailReadManufacturer<TRes> {
  factory CopyWith$Variables$Query$OrderDetailReadManufacturer(
    Variables$Query$OrderDetailReadManufacturer instance,
    TRes Function(Variables$Query$OrderDetailReadManufacturer) then,
  ) = _CopyWithImpl$Variables$Query$OrderDetailReadManufacturer;

  factory CopyWith$Variables$Query$OrderDetailReadManufacturer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderDetailReadManufacturer;

  TRes call({String? mstrManufacturerId, bool? ja, bool? en});
}

class _CopyWithImpl$Variables$Query$OrderDetailReadManufacturer<TRes>
    implements CopyWith$Variables$Query$OrderDetailReadManufacturer<TRes> {
  _CopyWithImpl$Variables$Query$OrderDetailReadManufacturer(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderDetailReadManufacturer _instance;

  final TRes Function(Variables$Query$OrderDetailReadManufacturer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$OrderDetailReadManufacturer._({
      ..._instance._$data,
      if (mstrManufacturerId != _undefined && mstrManufacturerId != null)
        'mstrManufacturerId': (mstrManufacturerId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderDetailReadManufacturer<TRes>
    implements CopyWith$Variables$Query$OrderDetailReadManufacturer<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderDetailReadManufacturer(this._res);

  TRes _res;

  call({String? mstrManufacturerId, bool? ja, bool? en}) => _res;
}

class Query$OrderDetailReadManufacturer {
  Query$OrderDetailReadManufacturer({
    this.mstrManufacturerByMstrManufacturerId,
    this.$__typename = 'Query',
  });

  factory Query$OrderDetailReadManufacturer.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerByMstrManufacturerId =
        json['mstrManufacturerByMstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer(
      mstrManufacturerByMstrManufacturerId:
          l$mstrManufacturerByMstrManufacturerId == null
          ? null
          : Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.fromJson(
              (l$mstrManufacturerByMstrManufacturerId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
  mstrManufacturerByMstrManufacturerId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    _resultData['mstrManufacturerByMstrManufacturerId'] =
        l$mstrManufacturerByMstrManufacturerId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerByMstrManufacturerId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderDetailReadManufacturer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final lOther$mstrManufacturerByMstrManufacturerId =
        other.mstrManufacturerByMstrManufacturerId;
    if (l$mstrManufacturerByMstrManufacturerId !=
        lOther$mstrManufacturerByMstrManufacturerId) {
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

extension UtilityExtension$Query$OrderDetailReadManufacturer
    on Query$OrderDetailReadManufacturer {
  CopyWith$Query$OrderDetailReadManufacturer<Query$OrderDetailReadManufacturer>
  get copyWith => CopyWith$Query$OrderDetailReadManufacturer(this, (i) => i);
}

abstract class CopyWith$Query$OrderDetailReadManufacturer<TRes> {
  factory CopyWith$Query$OrderDetailReadManufacturer(
    Query$OrderDetailReadManufacturer instance,
    TRes Function(Query$OrderDetailReadManufacturer) then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer;

  factory CopyWith$Query$OrderDetailReadManufacturer.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderDetailReadManufacturer;

  TRes call({
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId;
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer<TRes>
    implements CopyWith$Query$OrderDetailReadManufacturer<TRes> {
  _CopyWithImpl$Query$OrderDetailReadManufacturer(this._instance, this._then);

  final Query$OrderDetailReadManufacturer _instance;

  final TRes Function(Query$OrderDetailReadManufacturer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerByMstrManufacturerId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer(
      mstrManufacturerByMstrManufacturerId:
          mstrManufacturerByMstrManufacturerId == _undefined
          ? _instance.mstrManufacturerByMstrManufacturerId
          : (mstrManufacturerByMstrManufacturerId
                as Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId {
    final local$mstrManufacturerByMstrManufacturerId =
        _instance.mstrManufacturerByMstrManufacturerId;
    return local$mstrManufacturerByMstrManufacturerId == null
        ? CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
            local$mstrManufacturerByMstrManufacturerId,
            (e) => call(mstrManufacturerByMstrManufacturerId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer<TRes>
    implements CopyWith$Query$OrderDetailReadManufacturer<TRes> {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer(this._res);

  TRes _res;

  call({
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
        _res,
      );
}

const documentNodeQueryOrderDetailReadManufacturer = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderDetailReadManufacturer'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrManufacturerId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ja')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'en')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrManufacturerByMstrManufacturerId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrManufacturerId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrManufacturerId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrManufacturerId'),
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
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'ja'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'en'),
                              alias: null,
                              arguments: [],
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'en'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
                              name: NameNode(value: 'ja'),
                              alias: null,
                              arguments: [],
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'ja'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'en'),
                              alias: null,
                              arguments: [],
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'en'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
                          value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'ja'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'en'),
                              alias: null,
                              arguments: [],
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'en'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
  ],
);
Query$OrderDetailReadManufacturer _parserFn$Query$OrderDetailReadManufacturer(
  Map<String, dynamic> data,
) => Query$OrderDetailReadManufacturer.fromJson(data);
typedef OnQueryComplete$Query$OrderDetailReadManufacturer =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$OrderDetailReadManufacturer?,
    );

class Options$Query$OrderDetailReadManufacturer
    extends graphql.QueryOptions<Query$OrderDetailReadManufacturer> {
  Options$Query$OrderDetailReadManufacturer({
    String? operationName,
    required Variables$Query$OrderDetailReadManufacturer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailReadManufacturer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderDetailReadManufacturer? onComplete,
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
                     : _parserFn$Query$OrderDetailReadManufacturer(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderDetailReadManufacturer,
         parserFn: _parserFn$Query$OrderDetailReadManufacturer,
       );

  final OnQueryComplete$Query$OrderDetailReadManufacturer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderDetailReadManufacturer
    extends graphql.WatchQueryOptions<Query$OrderDetailReadManufacturer> {
  WatchOptions$Query$OrderDetailReadManufacturer({
    String? operationName,
    required Variables$Query$OrderDetailReadManufacturer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderDetailReadManufacturer? typedOptimisticResult,
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
         document: documentNodeQueryOrderDetailReadManufacturer,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderDetailReadManufacturer,
       );
}

class FetchMoreOptions$Query$OrderDetailReadManufacturer
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderDetailReadManufacturer({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderDetailReadManufacturer variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrderDetailReadManufacturer,
       );
}

extension ClientExtension$Query$OrderDetailReadManufacturer
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderDetailReadManufacturer>>
  query$OrderDetailReadManufacturer(
    Options$Query$OrderDetailReadManufacturer options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrderDetailReadManufacturer>
  watchQuery$OrderDetailReadManufacturer(
    WatchOptions$Query$OrderDetailReadManufacturer options,
  ) => this.watchQuery(options);

  void writeQuery$OrderDetailReadManufacturer({
    required Query$OrderDetailReadManufacturer data,
    required Variables$Query$OrderDetailReadManufacturer variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOrderDetailReadManufacturer,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderDetailReadManufacturer? readQuery$OrderDetailReadManufacturer({
    required Variables$Query$OrderDetailReadManufacturer variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrderDetailReadManufacturer,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OrderDetailReadManufacturer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderDetailReadManufacturer>
useQuery$OrderDetailReadManufacturer(
  Options$Query$OrderDetailReadManufacturer options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderDetailReadManufacturer>
useWatchQuery$OrderDetailReadManufacturer(
  WatchOptions$Query$OrderDetailReadManufacturer options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrderDetailReadManufacturer$Widget
    extends graphql_flutter.Query<Query$OrderDetailReadManufacturer> {
  Query$OrderDetailReadManufacturer$Widget({
    widgets.Key? key,
    required Options$Query$OrderDetailReadManufacturer options,
    required graphql_flutter.QueryBuilder<Query$OrderDetailReadManufacturer>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId {
  Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId({
    required this.mstrManufacturerId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrManufacturer',
  });

  factory Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
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
            is! Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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

extension UtilityExtension$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
    on Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId {
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
    instance,
    TRes Function(
      Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId;

  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId;

  TRes call({
    String? mstrManufacturerId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
  _instance;

  final TRes Function(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    on
        Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
