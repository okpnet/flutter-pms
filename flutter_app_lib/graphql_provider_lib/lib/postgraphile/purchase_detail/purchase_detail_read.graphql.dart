import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$PurchaseDetailRead {
  factory Variables$Query$PurchaseDetailRead({
    required int first,
    int? offset,
    Input$TransPurchaseDetailCondition? condition,
    List<Enum$TransPurchaseDetailsOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$PurchaseDetailRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$PurchaseDetailRead._(this._$data);

  factory Variables$Query$PurchaseDetailRead.fromJson(
    Map<String, dynamic> data,
  ) {
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
          : Input$TransPurchaseDetailCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransPurchaseDetailsOrderBy((e as String)))
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
    return Variables$Query$PurchaseDetailRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransPurchaseDetailCondition? get condition =>
      (_$data['condition'] as Input$TransPurchaseDetailCondition?);

  List<Enum$TransPurchaseDetailsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransPurchaseDetailsOrderBy>?);

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
          ?.map((e) => toJson$Enum$TransPurchaseDetailsOrderBy(e))
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

  CopyWith$Variables$Query$PurchaseDetailRead<
    Variables$Query$PurchaseDetailRead
  >
  get copyWith => CopyWith$Variables$Query$PurchaseDetailRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PurchaseDetailRead ||
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

abstract class CopyWith$Variables$Query$PurchaseDetailRead<TRes> {
  factory CopyWith$Variables$Query$PurchaseDetailRead(
    Variables$Query$PurchaseDetailRead instance,
    TRes Function(Variables$Query$PurchaseDetailRead) then,
  ) = _CopyWithImpl$Variables$Query$PurchaseDetailRead;

  factory CopyWith$Variables$Query$PurchaseDetailRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PurchaseDetailRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransPurchaseDetailCondition? condition,
    List<Enum$TransPurchaseDetailsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$PurchaseDetailRead<TRes>
    implements CopyWith$Variables$Query$PurchaseDetailRead<TRes> {
  _CopyWithImpl$Variables$Query$PurchaseDetailRead(this._instance, this._then);

  final Variables$Query$PurchaseDetailRead _instance;

  final TRes Function(Variables$Query$PurchaseDetailRead) _then;

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
    Variables$Query$PurchaseDetailRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$TransPurchaseDetailCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransPurchaseDetailsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PurchaseDetailRead<TRes>
    implements CopyWith$Variables$Query$PurchaseDetailRead<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchaseDetailRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransPurchaseDetailCondition? condition,
    List<Enum$TransPurchaseDetailsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$PurchaseDetailRead {
  Query$PurchaseDetailRead({
    this.allTransPurchaseDetails,
    this.$__typename = 'Query',
  });

  factory Query$PurchaseDetailRead.fromJson(Map<String, dynamic> json) {
    final l$allTransPurchaseDetails = json['allTransPurchaseDetails'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead(
      allTransPurchaseDetails: l$allTransPurchaseDetails == null
          ? null
          : Query$PurchaseDetailRead$allTransPurchaseDetails.fromJson(
              (l$allTransPurchaseDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseDetailRead$allTransPurchaseDetails?
  allTransPurchaseDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransPurchaseDetails = allTransPurchaseDetails;
    _resultData['allTransPurchaseDetails'] = l$allTransPurchaseDetails
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransPurchaseDetails = allTransPurchaseDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransPurchaseDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PurchaseDetailRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransPurchaseDetails = allTransPurchaseDetails;
    final lOther$allTransPurchaseDetails = other.allTransPurchaseDetails;
    if (l$allTransPurchaseDetails != lOther$allTransPurchaseDetails) {
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

extension UtilityExtension$Query$PurchaseDetailRead
    on Query$PurchaseDetailRead {
  CopyWith$Query$PurchaseDetailRead<Query$PurchaseDetailRead> get copyWith =>
      CopyWith$Query$PurchaseDetailRead(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseDetailRead<TRes> {
  factory CopyWith$Query$PurchaseDetailRead(
    Query$PurchaseDetailRead instance,
    TRes Function(Query$PurchaseDetailRead) then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead;

  factory CopyWith$Query$PurchaseDetailRead.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseDetailRead;

  TRes call({
    Query$PurchaseDetailRead$allTransPurchaseDetails? allTransPurchaseDetails,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes>
  get allTransPurchaseDetails;
}

class _CopyWithImpl$Query$PurchaseDetailRead<TRes>
    implements CopyWith$Query$PurchaseDetailRead<TRes> {
  _CopyWithImpl$Query$PurchaseDetailRead(this._instance, this._then);

  final Query$PurchaseDetailRead _instance;

  final TRes Function(Query$PurchaseDetailRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransPurchaseDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailRead(
      allTransPurchaseDetails: allTransPurchaseDetails == _undefined
          ? _instance.allTransPurchaseDetails
          : (allTransPurchaseDetails
                as Query$PurchaseDetailRead$allTransPurchaseDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes>
  get allTransPurchaseDetails {
    final local$allTransPurchaseDetails = _instance.allTransPurchaseDetails;
    return local$allTransPurchaseDetails == null
        ? CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails(
            local$allTransPurchaseDetails,
            (e) => call(allTransPurchaseDetails: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailRead<TRes>
    implements CopyWith$Query$PurchaseDetailRead<TRes> {
  _CopyWithStubImpl$Query$PurchaseDetailRead(this._res);

  TRes _res;

  call({
    Query$PurchaseDetailRead$allTransPurchaseDetails? allTransPurchaseDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes>
  get allTransPurchaseDetails =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails.stub(_res);
}

const documentNodeQueryPurchaseDetailRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PurchaseDetailRead'),
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
            name: NameNode(value: 'TransPurchaseDetailCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransPurchaseDetailsOrderBy'),
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
            name: NameNode(value: 'allTransPurchaseDetails'),
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
                        name: NameNode(value: 'transPurchaseDetailId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transPurchaseId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'restockingPurchase'),
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
                        name: NameNode(value: 'period'),
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
                        name: NameNode(value: 'historyId'),
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
                        name: NameNode(
                          value: 'historyMstrItemByHistoryIdAndMstrItemId',
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
Query$PurchaseDetailRead _parserFn$Query$PurchaseDetailRead(
  Map<String, dynamic> data,
) => Query$PurchaseDetailRead.fromJson(data);
typedef OnQueryComplete$Query$PurchaseDetailRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PurchaseDetailRead?);

class Options$Query$PurchaseDetailRead
    extends graphql.QueryOptions<Query$PurchaseDetailRead> {
  Options$Query$PurchaseDetailRead({
    String? operationName,
    required Variables$Query$PurchaseDetailRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchaseDetailRead? onComplete,
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
                 data == null ? null : _parserFn$Query$PurchaseDetailRead(data),
               ),
         onError: onError,
         document: documentNodeQueryPurchaseDetailRead,
         parserFn: _parserFn$Query$PurchaseDetailRead,
       );

  final OnQueryComplete$Query$PurchaseDetailRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PurchaseDetailRead
    extends graphql.WatchQueryOptions<Query$PurchaseDetailRead> {
  WatchOptions$Query$PurchaseDetailRead({
    String? operationName,
    required Variables$Query$PurchaseDetailRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailRead? typedOptimisticResult,
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
         document: documentNodeQueryPurchaseDetailRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PurchaseDetailRead,
       );
}

class FetchMoreOptions$Query$PurchaseDetailRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchaseDetailRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchaseDetailRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPurchaseDetailRead,
       );
}

extension ClientExtension$Query$PurchaseDetailRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchaseDetailRead>>
  query$PurchaseDetailRead(Options$Query$PurchaseDetailRead options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$PurchaseDetailRead>
  watchQuery$PurchaseDetailRead(
    WatchOptions$Query$PurchaseDetailRead options,
  ) => this.watchQuery(options);

  void writeQuery$PurchaseDetailRead({
    required Query$PurchaseDetailRead data,
    required Variables$Query$PurchaseDetailRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPurchaseDetailRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PurchaseDetailRead? readQuery$PurchaseDetailRead({
    required Variables$Query$PurchaseDetailRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPurchaseDetailRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PurchaseDetailRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchaseDetailRead>
useQuery$PurchaseDetailRead(Options$Query$PurchaseDetailRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchaseDetailRead>
useWatchQuery$PurchaseDetailRead(
  WatchOptions$Query$PurchaseDetailRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$PurchaseDetailRead$Widget
    extends graphql_flutter.Query<Query$PurchaseDetailRead> {
  Query$PurchaseDetailRead$Widget({
    widgets.Key? key,
    required Options$Query$PurchaseDetailRead options,
    required graphql_flutter.QueryBuilder<Query$PurchaseDetailRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PurchaseDetailRead$allTransPurchaseDetails {
  Query$PurchaseDetailRead$allTransPurchaseDetails({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransPurchaseDetailsConnection',
  });

  factory Query$PurchaseDetailRead$allTransPurchaseDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead$allTransPurchaseDetails(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$PurchaseDetailRead$allTransPurchaseDetails$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo pageInfo;

  final List<Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?> nodes;

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
    if (other is! Query$PurchaseDetailRead$allTransPurchaseDetails ||
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

extension UtilityExtension$Query$PurchaseDetailRead$allTransPurchaseDetails
    on Query$PurchaseDetailRead$allTransPurchaseDetails {
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<
    Query$PurchaseDetailRead$allTransPurchaseDetails
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes> {
  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails(
    Query$PurchaseDetailRead$allTransPurchaseDetails instance,
    TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails) then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails;

  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails;

  TRes call({
    int? totalCount,
    Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo? pageInfo,
    List<Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?> Function(
      Iterable<
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<
          Query$PurchaseDetailRead$allTransPurchaseDetails$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes>
    implements CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes> {
  _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailRead$allTransPurchaseDetails _instance;

  final TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailRead$allTransPurchaseDetails(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?> Function(
      Iterable<
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<
          Query$PurchaseDetailRead$allTransPurchaseDetails$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes>
    implements CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails<TRes> {
  _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo? pageInfo,
    List<Query$PurchaseDetailRead$allTransPurchaseDetails$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo {
  Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
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
    if (other is! Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo ||
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

extension UtilityExtension$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo
    on Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo {
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
    Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
    Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo instance,
    TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo)
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo;

  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo _instance;

  final TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
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

class _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$PurchaseDetailRead$allTransPurchaseDetails$nodes {
  Query$PurchaseDetailRead$allTransPurchaseDetails$nodes({
    required this.transPurchaseDetailId,
    this.transPurchaseId,
    this.restockingPurchase,
    this.quantity,
    this.period,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    required this.historyId,
    required this.mstrItemId,
    this.historyMstrItemByHistoryIdAndMstrItemId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'TransPurchaseDetail',
  });

  factory Query$PurchaseDetailRead$allTransPurchaseDetails$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseDetailId = json['transPurchaseDetailId'];
    final l$transPurchaseId = json['transPurchaseId'];
    final l$restockingPurchase = json['restockingPurchase'];
    final l$quantity = json['quantity'];
    final l$period = json['period'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$historyId = json['historyId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$historyMstrItemByHistoryIdAndMstrItemId =
        json['historyMstrItemByHistoryIdAndMstrItemId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
      transPurchaseDetailId: (l$transPurchaseDetailId as String),
      transPurchaseId: (l$transPurchaseId as String?),
      restockingPurchase: (l$restockingPurchase as bool?),
      quantity: (l$quantity as String?),
      period: (l$period as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      historyId: (l$historyId as String),
      mstrItemId: (l$mstrItemId as String),
      historyMstrItemByHistoryIdAndMstrItemId:
          l$historyMstrItemByHistoryIdAndMstrItemId == null
          ? null
          : Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId.fromJson(
              (l$historyMstrItemByHistoryIdAndMstrItemId
                  as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transPurchaseDetailId;

  final String? transPurchaseId;

  final bool? restockingPurchase;

  final String? quantity;

  final String? period;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final String historyId;

  final String mstrItemId;

  final Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId?
  historyMstrItemByHistoryIdAndMstrItemId;

  final Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseDetailId = transPurchaseDetailId;
    _resultData['transPurchaseDetailId'] = l$transPurchaseDetailId;
    final l$transPurchaseId = transPurchaseId;
    _resultData['transPurchaseId'] = l$transPurchaseId;
    final l$restockingPurchase = restockingPurchase;
    _resultData['restockingPurchase'] = l$restockingPurchase;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$period = period;
    _resultData['period'] = l$period;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$historyMstrItemByHistoryIdAndMstrItemId =
        historyMstrItemByHistoryIdAndMstrItemId;
    _resultData['historyMstrItemByHistoryIdAndMstrItemId'] =
        l$historyMstrItemByHistoryIdAndMstrItemId?.toJson();
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
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final l$transPurchaseId = transPurchaseId;
    final l$restockingPurchase = restockingPurchase;
    final l$quantity = quantity;
    final l$period = period;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$historyId = historyId;
    final l$mstrItemId = mstrItemId;
    final l$historyMstrItemByHistoryIdAndMstrItemId =
        historyMstrItemByHistoryIdAndMstrItemId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transPurchaseDetailId,
      l$transPurchaseId,
      l$restockingPurchase,
      l$quantity,
      l$period,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$historyId,
      l$mstrItemId,
      l$historyMstrItemByHistoryIdAndMstrItemId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PurchaseDetailRead$allTransPurchaseDetails$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final lOther$transPurchaseDetailId = other.transPurchaseDetailId;
    if (l$transPurchaseDetailId != lOther$transPurchaseDetailId) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$restockingPurchase = restockingPurchase;
    final lOther$restockingPurchase = other.restockingPurchase;
    if (l$restockingPurchase != lOther$restockingPurchase) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$period = period;
    final lOther$period = other.period;
    if (l$period != lOther$period) {
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
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$historyMstrItemByHistoryIdAndMstrItemId =
        historyMstrItemByHistoryIdAndMstrItemId;
    final lOther$historyMstrItemByHistoryIdAndMstrItemId =
        other.historyMstrItemByHistoryIdAndMstrItemId;
    if (l$historyMstrItemByHistoryIdAndMstrItemId !=
        lOther$historyMstrItemByHistoryIdAndMstrItemId) {
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

extension UtilityExtension$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes
    on Query$PurchaseDetailRead$allTransPurchaseDetails$nodes {
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes instance,
    TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails$nodes) then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes;

  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes;

  TRes call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? historyId,
    String? mstrItemId,
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId?
    historyMstrItemByHistoryIdAndMstrItemId,
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryIdAndMstrItemId;
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<TRes>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<TRes> {
  _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailRead$allTransPurchaseDetails$nodes _instance;

  final TRes Function(Query$PurchaseDetailRead$allTransPurchaseDetails$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseDetailId = _undefined,
    Object? transPurchaseId = _undefined,
    Object? restockingPurchase = _undefined,
    Object? quantity = _undefined,
    Object? period = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? historyId = _undefined,
    Object? mstrItemId = _undefined,
    Object? historyMstrItemByHistoryIdAndMstrItemId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
      transPurchaseDetailId:
          transPurchaseDetailId == _undefined || transPurchaseDetailId == null
          ? _instance.transPurchaseDetailId
          : (transPurchaseDetailId as String),
      transPurchaseId: transPurchaseId == _undefined
          ? _instance.transPurchaseId
          : (transPurchaseId as String?),
      restockingPurchase: restockingPurchase == _undefined
          ? _instance.restockingPurchase
          : (restockingPurchase as bool?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      period: period == _undefined ? _instance.period : (period as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      historyMstrItemByHistoryIdAndMstrItemId:
          historyMstrItemByHistoryIdAndMstrItemId == _undefined
          ? _instance.historyMstrItemByHistoryIdAndMstrItemId
          : (historyMstrItemByHistoryIdAndMstrItemId
                as Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryIdAndMstrItemId {
    final local$historyMstrItemByHistoryIdAndMstrItemId =
        _instance.historyMstrItemByHistoryIdAndMstrItemId;
    return local$historyMstrItemByHistoryIdAndMstrItemId == null
        ? CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
            local$historyMstrItemByHistoryIdAndMstrItemId,
            (e) => call(historyMstrItemByHistoryIdAndMstrItemId: e),
          );
  }

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes<TRes> {
  _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? historyId,
    String? mstrItemId,
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId?
    historyMstrItemByHistoryIdAndMstrItemId,
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
    TRes
  >
  get historyMstrItemByHistoryIdAndMstrItemId =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId.stub(
        _res,
      );

  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId {
  Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId({
    required this.historyId,
    required this.code,
    this.identification,
    this.labelCode,
    this.mstrManufacturerId,
    this.$__typename = 'HistoryMstrItem',
  });

  factory Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$labelCode = json['labelCode'];
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
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
            is! Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId ||
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

extension UtilityExtension$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId
    on
        Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId {
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId
    instance,
    TRes Function(
      Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId;

  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId;

  TRes call({
    String? historyId,
    String? code,
    String? identification,
    String? labelCode,
    String? mstrManufacturerId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId
  _instance;

  final TRes Function(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId,
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
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
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

class _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyMstrItemByHistoryIdAndMstrItemId(
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

class Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailRead$allTransPurchaseDetails$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$PurchaseDetailReadUpdaterAppellation {
  factory Variables$Query$PurchaseDetailReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$PurchaseDetailReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$PurchaseDetailReadUpdaterAppellation._(this._$data);

  factory Variables$Query$PurchaseDetailReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$PurchaseDetailReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation<
    Variables$Query$PurchaseDetailReadUpdaterAppellation
  >
  get copyWith => CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PurchaseDetailReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation(
    Variables$Query$PurchaseDetailReadUpdaterAppellation instance,
    TRes Function(Variables$Query$PurchaseDetailReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation;

  factory CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$PurchaseDetailReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$PurchaseDetailReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$PurchaseDetailReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$PurchaseDetailReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchaseDetailReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$PurchaseDetailReadUpdaterAppellation {
  Query$PurchaseDetailReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$PurchaseDetailReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$PurchaseDetailReadUpdaterAppellation ||
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

extension UtilityExtension$Query$PurchaseDetailReadUpdaterAppellation
    on Query$PurchaseDetailReadUpdaterAppellation {
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation<
    Query$PurchaseDetailReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseDetailReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation(
    Query$PurchaseDetailReadUpdaterAppellation instance,
    TRes Function(Query$PurchaseDetailReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation;

  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation;

  TRes call({
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation<TRes>
    implements CopyWith$Query$PurchaseDetailReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadUpdaterAppellation _instance;

  final TRes Function(Query$PurchaseDetailReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation<TRes>
    implements CopyWith$Query$PurchaseDetailReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryPurchaseDetailReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PurchaseDetailReadUpdaterAppellation'),
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
Query$PurchaseDetailReadUpdaterAppellation
_parserFn$Query$PurchaseDetailReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$PurchaseDetailReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$PurchaseDetailReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$PurchaseDetailReadUpdaterAppellation?,
    );

class Options$Query$PurchaseDetailReadUpdaterAppellation
    extends graphql.QueryOptions<Query$PurchaseDetailReadUpdaterAppellation> {
  Options$Query$PurchaseDetailReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$PurchaseDetailReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchaseDetailReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$PurchaseDetailReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryPurchaseDetailReadUpdaterAppellation,
         parserFn: _parserFn$Query$PurchaseDetailReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$PurchaseDetailReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PurchaseDetailReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<Query$PurchaseDetailReadUpdaterAppellation> {
  WatchOptions$Query$PurchaseDetailReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$PurchaseDetailReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryPurchaseDetailReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PurchaseDetailReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$PurchaseDetailReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchaseDetailReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchaseDetailReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPurchaseDetailReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$PurchaseDetailReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchaseDetailReadUpdaterAppellation>>
  query$PurchaseDetailReadUpdaterAppellation(
    Options$Query$PurchaseDetailReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PurchaseDetailReadUpdaterAppellation>
  watchQuery$PurchaseDetailReadUpdaterAppellation(
    WatchOptions$Query$PurchaseDetailReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$PurchaseDetailReadUpdaterAppellation({
    required Query$PurchaseDetailReadUpdaterAppellation data,
    required Variables$Query$PurchaseDetailReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPurchaseDetailReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PurchaseDetailReadUpdaterAppellation?
  readQuery$PurchaseDetailReadUpdaterAppellation({
    required Variables$Query$PurchaseDetailReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPurchaseDetailReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PurchaseDetailReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchaseDetailReadUpdaterAppellation>
useQuery$PurchaseDetailReadUpdaterAppellation(
  Options$Query$PurchaseDetailReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchaseDetailReadUpdaterAppellation>
useWatchQuery$PurchaseDetailReadUpdaterAppellation(
  WatchOptions$Query$PurchaseDetailReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$PurchaseDetailReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$PurchaseDetailReadUpdaterAppellation> {
  Query$PurchaseDetailReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$PurchaseDetailReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$PurchaseDetailReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Variables$Query$PurchaseDetailReadManufacturer {
  factory Variables$Query$PurchaseDetailReadManufacturer({
    required String mstrManufacturerId,
    required bool ja,
    required bool en,
  }) => Variables$Query$PurchaseDetailReadManufacturer._({
    r'mstrManufacturerId': mstrManufacturerId,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$PurchaseDetailReadManufacturer._(this._$data);

  factory Variables$Query$PurchaseDetailReadManufacturer.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = data['mstrManufacturerId'];
    result$data['mstrManufacturerId'] = (l$mstrManufacturerId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$PurchaseDetailReadManufacturer._(result$data);
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

  CopyWith$Variables$Query$PurchaseDetailReadManufacturer<
    Variables$Query$PurchaseDetailReadManufacturer
  >
  get copyWith =>
      CopyWith$Variables$Query$PurchaseDetailReadManufacturer(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PurchaseDetailReadManufacturer ||
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

abstract class CopyWith$Variables$Query$PurchaseDetailReadManufacturer<TRes> {
  factory CopyWith$Variables$Query$PurchaseDetailReadManufacturer(
    Variables$Query$PurchaseDetailReadManufacturer instance,
    TRes Function(Variables$Query$PurchaseDetailReadManufacturer) then,
  ) = _CopyWithImpl$Variables$Query$PurchaseDetailReadManufacturer;

  factory CopyWith$Variables$Query$PurchaseDetailReadManufacturer.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$PurchaseDetailReadManufacturer;

  TRes call({String? mstrManufacturerId, bool? ja, bool? en});
}

class _CopyWithImpl$Variables$Query$PurchaseDetailReadManufacturer<TRes>
    implements CopyWith$Variables$Query$PurchaseDetailReadManufacturer<TRes> {
  _CopyWithImpl$Variables$Query$PurchaseDetailReadManufacturer(
    this._instance,
    this._then,
  );

  final Variables$Query$PurchaseDetailReadManufacturer _instance;

  final TRes Function(Variables$Query$PurchaseDetailReadManufacturer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$PurchaseDetailReadManufacturer._({
      ..._instance._$data,
      if (mstrManufacturerId != _undefined && mstrManufacturerId != null)
        'mstrManufacturerId': (mstrManufacturerId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PurchaseDetailReadManufacturer<TRes>
    implements CopyWith$Variables$Query$PurchaseDetailReadManufacturer<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchaseDetailReadManufacturer(this._res);

  TRes _res;

  call({String? mstrManufacturerId, bool? ja, bool? en}) => _res;
}

class Query$PurchaseDetailReadManufacturer {
  Query$PurchaseDetailReadManufacturer({
    this.mstrManufacturerByMstrManufacturerId,
    this.$__typename = 'Query',
  });

  factory Query$PurchaseDetailReadManufacturer.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerByMstrManufacturerId =
        json['mstrManufacturerByMstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer(
      mstrManufacturerByMstrManufacturerId:
          l$mstrManufacturerByMstrManufacturerId == null
          ? null
          : Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.fromJson(
              (l$mstrManufacturerByMstrManufacturerId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
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
    if (other is! Query$PurchaseDetailReadManufacturer ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer
    on Query$PurchaseDetailReadManufacturer {
  CopyWith$Query$PurchaseDetailReadManufacturer<
    Query$PurchaseDetailReadManufacturer
  >
  get copyWith => CopyWith$Query$PurchaseDetailReadManufacturer(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer<TRes> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer(
    Query$PurchaseDetailReadManufacturer instance,
    TRes Function(Query$PurchaseDetailReadManufacturer) then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer;

  factory CopyWith$Query$PurchaseDetailReadManufacturer.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer;

  TRes call({
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId;
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer<TRes>
    implements CopyWith$Query$PurchaseDetailReadManufacturer<TRes> {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer _instance;

  final TRes Function(Query$PurchaseDetailReadManufacturer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerByMstrManufacturerId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer(
      mstrManufacturerByMstrManufacturerId:
          mstrManufacturerByMstrManufacturerId == _undefined
          ? _instance.mstrManufacturerByMstrManufacturerId
          : (mstrManufacturerByMstrManufacturerId
                as Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId {
    final local$mstrManufacturerByMstrManufacturerId =
        _instance.mstrManufacturerByMstrManufacturerId;
    return local$mstrManufacturerByMstrManufacturerId == null
        ? CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
            local$mstrManufacturerByMstrManufacturerId,
            (e) => call(mstrManufacturerByMstrManufacturerId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer<TRes>
    implements CopyWith$Query$PurchaseDetailReadManufacturer<TRes> {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer(this._res);

  TRes _res;

  call({
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
        _res,
      );
}

const documentNodeQueryPurchaseDetailReadManufacturer = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PurchaseDetailReadManufacturer'),
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
Query$PurchaseDetailReadManufacturer
_parserFn$Query$PurchaseDetailReadManufacturer(Map<String, dynamic> data) =>
    Query$PurchaseDetailReadManufacturer.fromJson(data);
typedef OnQueryComplete$Query$PurchaseDetailReadManufacturer =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$PurchaseDetailReadManufacturer?,
    );

class Options$Query$PurchaseDetailReadManufacturer
    extends graphql.QueryOptions<Query$PurchaseDetailReadManufacturer> {
  Options$Query$PurchaseDetailReadManufacturer({
    String? operationName,
    required Variables$Query$PurchaseDetailReadManufacturer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailReadManufacturer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchaseDetailReadManufacturer? onComplete,
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
                     : _parserFn$Query$PurchaseDetailReadManufacturer(data),
               ),
         onError: onError,
         document: documentNodeQueryPurchaseDetailReadManufacturer,
         parserFn: _parserFn$Query$PurchaseDetailReadManufacturer,
       );

  final OnQueryComplete$Query$PurchaseDetailReadManufacturer?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PurchaseDetailReadManufacturer
    extends graphql.WatchQueryOptions<Query$PurchaseDetailReadManufacturer> {
  WatchOptions$Query$PurchaseDetailReadManufacturer({
    String? operationName,
    required Variables$Query$PurchaseDetailReadManufacturer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseDetailReadManufacturer? typedOptimisticResult,
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
         document: documentNodeQueryPurchaseDetailReadManufacturer,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PurchaseDetailReadManufacturer,
       );
}

class FetchMoreOptions$Query$PurchaseDetailReadManufacturer
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchaseDetailReadManufacturer({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchaseDetailReadManufacturer variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPurchaseDetailReadManufacturer,
       );
}

extension ClientExtension$Query$PurchaseDetailReadManufacturer
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchaseDetailReadManufacturer>>
  query$PurchaseDetailReadManufacturer(
    Options$Query$PurchaseDetailReadManufacturer options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PurchaseDetailReadManufacturer>
  watchQuery$PurchaseDetailReadManufacturer(
    WatchOptions$Query$PurchaseDetailReadManufacturer options,
  ) => this.watchQuery(options);

  void writeQuery$PurchaseDetailReadManufacturer({
    required Query$PurchaseDetailReadManufacturer data,
    required Variables$Query$PurchaseDetailReadManufacturer variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPurchaseDetailReadManufacturer,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PurchaseDetailReadManufacturer?
  readQuery$PurchaseDetailReadManufacturer({
    required Variables$Query$PurchaseDetailReadManufacturer variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPurchaseDetailReadManufacturer,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PurchaseDetailReadManufacturer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchaseDetailReadManufacturer>
useQuery$PurchaseDetailReadManufacturer(
  Options$Query$PurchaseDetailReadManufacturer options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchaseDetailReadManufacturer>
useWatchQuery$PurchaseDetailReadManufacturer(
  WatchOptions$Query$PurchaseDetailReadManufacturer options,
) => graphql_flutter.useWatchQuery(options);

class Query$PurchaseDetailReadManufacturer$Widget
    extends graphql_flutter.Query<Query$PurchaseDetailReadManufacturer> {
  Query$PurchaseDetailReadManufacturer$Widget({
    widgets.Key? key,
    required Options$Query$PurchaseDetailReadManufacturer options,
    required graphql_flutter.QueryBuilder<Query$PurchaseDetailReadManufacturer>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId {
  Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId({
    required this.mstrManufacturerId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrManufacturer',
  });

  factory Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
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
            is! Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
    on Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId {
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
    instance,
    TRes Function(
      Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId;

  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId;

  TRes call({
    String? mstrManufacturerId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    on
        Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseDetailReadManufacturer$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
