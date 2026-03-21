import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$StaffQuery {
  factory Variables$Query$StaffQuery({
    bool? remove,
    required Input$tests_info_staff_bool_exp where,
  }) => Variables$Query$StaffQuery._({
    if (remove != null) r'remove': remove,
    r'where': where,
  });

  Variables$Query$StaffQuery._(this._$data);

  factory Variables$Query$StaffQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('remove')) {
      final l$remove = data['remove'];
      result$data['remove'] = (l$remove as bool?);
    }
    final l$where = data['where'];
    result$data['where'] = Input$tests_info_staff_bool_exp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Variables$Query$StaffQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get remove => (_$data['remove'] as bool?);

  Input$tests_info_staff_bool_exp get where =>
      (_$data['where'] as Input$tests_info_staff_bool_exp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('remove')) {
      final l$remove = remove;
      result$data['remove'] = l$remove;
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$StaffQuery<Variables$Query$StaffQuery>
  get copyWith => CopyWith$Variables$Query$StaffQuery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StaffQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (_$data.containsKey('remove') != other._$data.containsKey('remove')) {
      return false;
    }
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$remove = remove;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('remove') ? l$remove : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Query$StaffQuery<TRes> {
  factory CopyWith$Variables$Query$StaffQuery(
    Variables$Query$StaffQuery instance,
    TRes Function(Variables$Query$StaffQuery) then,
  ) = _CopyWithImpl$Variables$Query$StaffQuery;

  factory CopyWith$Variables$Query$StaffQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StaffQuery;

  TRes call({bool? remove, Input$tests_info_staff_bool_exp? where});
}

class _CopyWithImpl$Variables$Query$StaffQuery<TRes>
    implements CopyWith$Variables$Query$StaffQuery<TRes> {
  _CopyWithImpl$Variables$Query$StaffQuery(this._instance, this._then);

  final Variables$Query$StaffQuery _instance;

  final TRes Function(Variables$Query$StaffQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? remove = _undefined, Object? where = _undefined}) => _then(
    Variables$Query$StaffQuery._({
      ..._instance._$data,
      if (remove != _undefined) 'remove': (remove as bool?),
      if (where != _undefined && where != null)
        'where': (where as Input$tests_info_staff_bool_exp),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$StaffQuery<TRes>
    implements CopyWith$Variables$Query$StaffQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$StaffQuery(this._res);

  TRes _res;

  call({bool? remove, Input$tests_info_staff_bool_exp? where}) => _res;
}

class Query$StaffQuery {
  Query$StaffQuery({
    required this.tests_info_staff,
    required this.tests_info_staff_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$StaffQuery.fromJson(Map<String, dynamic> json) {
    final l$tests_info_staff = json['tests_info_staff'];
    final l$tests_info_staff_aggregate = json['tests_info_staff_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$StaffQuery(
      tests_info_staff: (l$tests_info_staff as List<dynamic>)
          .map(
            (e) => Query$StaffQuery$tests_info_staff.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tests_info_staff_aggregate:
          Query$StaffQuery$tests_info_staff_aggregate.fromJson(
            (l$tests_info_staff_aggregate as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StaffQuery$tests_info_staff> tests_info_staff;

  final Query$StaffQuery$tests_info_staff_aggregate tests_info_staff_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tests_info_staff = tests_info_staff;
    _resultData['tests_info_staff'] = l$tests_info_staff
        .map((e) => e.toJson())
        .toList();
    final l$tests_info_staff_aggregate = tests_info_staff_aggregate;
    _resultData['tests_info_staff_aggregate'] = l$tests_info_staff_aggregate
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tests_info_staff = tests_info_staff;
    final l$tests_info_staff_aggregate = tests_info_staff_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tests_info_staff.map((v) => v)),
      l$tests_info_staff_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffQuery || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tests_info_staff = tests_info_staff;
    final lOther$tests_info_staff = other.tests_info_staff;
    if (l$tests_info_staff.length != lOther$tests_info_staff.length) {
      return false;
    }
    for (int i = 0; i < l$tests_info_staff.length; i++) {
      final l$tests_info_staff$entry = l$tests_info_staff[i];
      final lOther$tests_info_staff$entry = lOther$tests_info_staff[i];
      if (l$tests_info_staff$entry != lOther$tests_info_staff$entry) {
        return false;
      }
    }
    final l$tests_info_staff_aggregate = tests_info_staff_aggregate;
    final lOther$tests_info_staff_aggregate = other.tests_info_staff_aggregate;
    if (l$tests_info_staff_aggregate != lOther$tests_info_staff_aggregate) {
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

extension UtilityExtension$Query$StaffQuery on Query$StaffQuery {
  CopyWith$Query$StaffQuery<Query$StaffQuery> get copyWith =>
      CopyWith$Query$StaffQuery(this, (i) => i);
}

abstract class CopyWith$Query$StaffQuery<TRes> {
  factory CopyWith$Query$StaffQuery(
    Query$StaffQuery instance,
    TRes Function(Query$StaffQuery) then,
  ) = _CopyWithImpl$Query$StaffQuery;

  factory CopyWith$Query$StaffQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffQuery;

  TRes call({
    List<Query$StaffQuery$tests_info_staff>? tests_info_staff,
    Query$StaffQuery$tests_info_staff_aggregate? tests_info_staff_aggregate,
    String? $__typename,
  });
  TRes tests_info_staff(
    Iterable<Query$StaffQuery$tests_info_staff> Function(
      Iterable<
        CopyWith$Query$StaffQuery$tests_info_staff<
          Query$StaffQuery$tests_info_staff
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes>
  get tests_info_staff_aggregate;
}

class _CopyWithImpl$Query$StaffQuery<TRes>
    implements CopyWith$Query$StaffQuery<TRes> {
  _CopyWithImpl$Query$StaffQuery(this._instance, this._then);

  final Query$StaffQuery _instance;

  final TRes Function(Query$StaffQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tests_info_staff = _undefined,
    Object? tests_info_staff_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffQuery(
      tests_info_staff:
          tests_info_staff == _undefined || tests_info_staff == null
          ? _instance.tests_info_staff
          : (tests_info_staff as List<Query$StaffQuery$tests_info_staff>),
      tests_info_staff_aggregate:
          tests_info_staff_aggregate == _undefined ||
              tests_info_staff_aggregate == null
          ? _instance.tests_info_staff_aggregate
          : (tests_info_staff_aggregate
                as Query$StaffQuery$tests_info_staff_aggregate),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tests_info_staff(
    Iterable<Query$StaffQuery$tests_info_staff> Function(
      Iterable<
        CopyWith$Query$StaffQuery$tests_info_staff<
          Query$StaffQuery$tests_info_staff
        >
      >,
    )
    _fn,
  ) => call(
    tests_info_staff: _fn(
      _instance.tests_info_staff.map(
        (e) => CopyWith$Query$StaffQuery$tests_info_staff(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes>
  get tests_info_staff_aggregate {
    final local$tests_info_staff_aggregate =
        _instance.tests_info_staff_aggregate;
    return CopyWith$Query$StaffQuery$tests_info_staff_aggregate(
      local$tests_info_staff_aggregate,
      (e) => call(tests_info_staff_aggregate: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffQuery<TRes>
    implements CopyWith$Query$StaffQuery<TRes> {
  _CopyWithStubImpl$Query$StaffQuery(this._res);

  TRes _res;

  call({
    List<Query$StaffQuery$tests_info_staff>? tests_info_staff,
    Query$StaffQuery$tests_info_staff_aggregate? tests_info_staff_aggregate,
    String? $__typename,
  }) => _res;

  tests_info_staff(_fn) => _res;

  CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes>
  get tests_info_staff_aggregate =>
      CopyWith$Query$StaffQuery$tests_info_staff_aggregate.stub(_res);
}

const documentNodeQueryStaffQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'StaffQuery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'remove')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'tests_info_staff_bool_exp'),
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
            name: NameNode(value: 'tests_info_staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'remove'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'remove'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: ListValueNode(
                        values: [VariableNode(name: NameNode(value: 'where'))],
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
                  name: NameNode(value: 'info_staff_id'),
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
                  name: NameNode(value: 'kana'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
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
                  name: NameNode(value: 'private_phone'),
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
                  name: NameNode(value: 'revision'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'sex'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'update_at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'update_user_history_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'update_user_id'),
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
            name: NameNode(value: 'tests_info_staff_aggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'remove'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'remove'),
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
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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
Query$StaffQuery _parserFn$Query$StaffQuery(Map<String, dynamic> data) =>
    Query$StaffQuery.fromJson(data);
typedef OnQueryComplete$Query$StaffQuery =
    FutureOr<void> Function(Map<String, dynamic>?, Query$StaffQuery?);

class Options$Query$StaffQuery extends graphql.QueryOptions<Query$StaffQuery> {
  Options$Query$StaffQuery({
    String? operationName,
    required Variables$Query$StaffQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StaffQuery? onComplete,
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
                 data == null ? null : _parserFn$Query$StaffQuery(data),
               ),
         onError: onError,
         document: documentNodeQueryStaffQuery,
         parserFn: _parserFn$Query$StaffQuery,
       );

  final OnQueryComplete$Query$StaffQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$StaffQuery
    extends graphql.WatchQueryOptions<Query$StaffQuery> {
  WatchOptions$Query$StaffQuery({
    String? operationName,
    required Variables$Query$StaffQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffQuery? typedOptimisticResult,
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
         document: documentNodeQueryStaffQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$StaffQuery,
       );
}

class FetchMoreOptions$Query$StaffQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StaffQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StaffQuery variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryStaffQuery,
       );
}

extension ClientExtension$Query$StaffQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StaffQuery>> query$StaffQuery(
    Options$Query$StaffQuery options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$StaffQuery> watchQuery$StaffQuery(
    WatchOptions$Query$StaffQuery options,
  ) => this.watchQuery(options);

  void writeQuery$StaffQuery({
    required Query$StaffQuery data,
    required Variables$Query$StaffQuery variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryStaffQuery),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$StaffQuery? readQuery$StaffQuery({
    required Variables$Query$StaffQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryStaffQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StaffQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StaffQuery> useQuery$StaffQuery(
  Options$Query$StaffQuery options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$StaffQuery> useWatchQuery$StaffQuery(
  WatchOptions$Query$StaffQuery options,
) => graphql_flutter.useWatchQuery(options);

class Query$StaffQuery$Widget extends graphql_flutter.Query<Query$StaffQuery> {
  Query$StaffQuery$Widget({
    widgets.Key? key,
    required Options$Query$StaffQuery options,
    required graphql_flutter.QueryBuilder<Query$StaffQuery> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$StaffQuery$tests_info_staff {
  Query$StaffQuery$tests_info_staff({
    required this.info_staff_id,
    this.code,
    this.kana,
    required this.name,
    this.phone,
    this.private_phone,
    this.remove,
    this.revision,
    this.sex,
    this.update_at,
    this.update_user_history_id,
    this.update_user_id,
    this.remarks,
    this.$__typename = 'tests_info_staff',
  });

  factory Query$StaffQuery$tests_info_staff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$info_staff_id = json['info_staff_id'];
    final l$code = json['code'];
    final l$kana = json['kana'];
    final l$name = json['name'];
    final l$phone = json['phone'];
    final l$private_phone = json['private_phone'];
    final l$remove = json['remove'];
    final l$revision = json['revision'];
    final l$sex = json['sex'];
    final l$update_at = json['update_at'];
    final l$update_user_history_id = json['update_user_history_id'];
    final l$update_user_id = json['update_user_id'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Query$StaffQuery$tests_info_staff(
      info_staff_id: (l$info_staff_id as String),
      code: (l$code as String?),
      kana: (l$kana as String?),
      name: (l$name as String),
      phone: (l$phone as String?),
      private_phone: (l$private_phone as String?),
      remove: (l$remove as bool?),
      revision: (l$revision as int?),
      sex: (l$sex as String?),
      update_at: (l$update_at as String?),
      update_user_history_id: (l$update_user_history_id as String?),
      update_user_id: (l$update_user_id as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String info_staff_id;

  final String? code;

  final String? kana;

  final String name;

  final String? phone;

  final String? private_phone;

  final bool? remove;

  final int? revision;

  final String? sex;

  final String? update_at;

  final String? update_user_history_id;

  final String? update_user_id;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info_staff_id = info_staff_id;
    _resultData['info_staff_id'] = l$info_staff_id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$kana = kana;
    _resultData['kana'] = l$kana;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$private_phone = private_phone;
    _resultData['private_phone'] = l$private_phone;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$revision = revision;
    _resultData['revision'] = l$revision;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$update_at = update_at;
    _resultData['update_at'] = l$update_at;
    final l$update_user_history_id = update_user_history_id;
    _resultData['update_user_history_id'] = l$update_user_history_id;
    final l$update_user_id = update_user_id;
    _resultData['update_user_id'] = l$update_user_id;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info_staff_id = info_staff_id;
    final l$code = code;
    final l$kana = kana;
    final l$name = name;
    final l$phone = phone;
    final l$private_phone = private_phone;
    final l$remove = remove;
    final l$revision = revision;
    final l$sex = sex;
    final l$update_at = update_at;
    final l$update_user_history_id = update_user_history_id;
    final l$update_user_id = update_user_id;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info_staff_id,
      l$code,
      l$kana,
      l$name,
      l$phone,
      l$private_phone,
      l$remove,
      l$revision,
      l$sex,
      l$update_at,
      l$update_user_history_id,
      l$update_user_id,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffQuery$tests_info_staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info_staff_id = info_staff_id;
    final lOther$info_staff_id = other.info_staff_id;
    if (l$info_staff_id != lOther$info_staff_id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$kana = kana;
    final lOther$kana = other.kana;
    if (l$kana != lOther$kana) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$private_phone = private_phone;
    final lOther$private_phone = other.private_phone;
    if (l$private_phone != lOther$private_phone) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$revision = revision;
    final lOther$revision = other.revision;
    if (l$revision != lOther$revision) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$update_at = update_at;
    final lOther$update_at = other.update_at;
    if (l$update_at != lOther$update_at) {
      return false;
    }
    final l$update_user_history_id = update_user_history_id;
    final lOther$update_user_history_id = other.update_user_history_id;
    if (l$update_user_history_id != lOther$update_user_history_id) {
      return false;
    }
    final l$update_user_id = update_user_id;
    final lOther$update_user_id = other.update_user_id;
    if (l$update_user_id != lOther$update_user_id) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
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

extension UtilityExtension$Query$StaffQuery$tests_info_staff
    on Query$StaffQuery$tests_info_staff {
  CopyWith$Query$StaffQuery$tests_info_staff<Query$StaffQuery$tests_info_staff>
  get copyWith => CopyWith$Query$StaffQuery$tests_info_staff(this, (i) => i);
}

abstract class CopyWith$Query$StaffQuery$tests_info_staff<TRes> {
  factory CopyWith$Query$StaffQuery$tests_info_staff(
    Query$StaffQuery$tests_info_staff instance,
    TRes Function(Query$StaffQuery$tests_info_staff) then,
  ) = _CopyWithImpl$Query$StaffQuery$tests_info_staff;

  factory CopyWith$Query$StaffQuery$tests_info_staff.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffQuery$tests_info_staff;

  TRes call({
    String? info_staff_id,
    String? code,
    String? kana,
    String? name,
    String? phone,
    String? private_phone,
    bool? remove,
    int? revision,
    String? sex,
    String? update_at,
    String? update_user_history_id,
    String? update_user_id,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StaffQuery$tests_info_staff<TRes>
    implements CopyWith$Query$StaffQuery$tests_info_staff<TRes> {
  _CopyWithImpl$Query$StaffQuery$tests_info_staff(this._instance, this._then);

  final Query$StaffQuery$tests_info_staff _instance;

  final TRes Function(Query$StaffQuery$tests_info_staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info_staff_id = _undefined,
    Object? code = _undefined,
    Object? kana = _undefined,
    Object? name = _undefined,
    Object? phone = _undefined,
    Object? private_phone = _undefined,
    Object? remove = _undefined,
    Object? revision = _undefined,
    Object? sex = _undefined,
    Object? update_at = _undefined,
    Object? update_user_history_id = _undefined,
    Object? update_user_id = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffQuery$tests_info_staff(
      info_staff_id: info_staff_id == _undefined || info_staff_id == null
          ? _instance.info_staff_id
          : (info_staff_id as String),
      code: code == _undefined ? _instance.code : (code as String?),
      kana: kana == _undefined ? _instance.kana : (kana as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      private_phone: private_phone == _undefined
          ? _instance.private_phone
          : (private_phone as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      revision: revision == _undefined
          ? _instance.revision
          : (revision as int?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      update_at: update_at == _undefined
          ? _instance.update_at
          : (update_at as String?),
      update_user_history_id: update_user_history_id == _undefined
          ? _instance.update_user_history_id
          : (update_user_history_id as String?),
      update_user_id: update_user_id == _undefined
          ? _instance.update_user_id
          : (update_user_id as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffQuery$tests_info_staff<TRes>
    implements CopyWith$Query$StaffQuery$tests_info_staff<TRes> {
  _CopyWithStubImpl$Query$StaffQuery$tests_info_staff(this._res);

  TRes _res;

  call({
    String? info_staff_id,
    String? code,
    String? kana,
    String? name,
    String? phone,
    String? private_phone,
    bool? remove,
    int? revision,
    String? sex,
    String? update_at,
    String? update_user_history_id,
    String? update_user_id,
    String? remarks,
    String? $__typename,
  }) => _res;
}

class Query$StaffQuery$tests_info_staff_aggregate {
  Query$StaffQuery$tests_info_staff_aggregate({
    this.aggregate,
    this.$__typename = 'tests_info_staff_aggregate',
  });

  factory Query$StaffQuery$tests_info_staff_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$StaffQuery$tests_info_staff_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$StaffQuery$tests_info_staff_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StaffQuery$tests_info_staff_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffQuery$tests_info_staff_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$StaffQuery$tests_info_staff_aggregate
    on Query$StaffQuery$tests_info_staff_aggregate {
  CopyWith$Query$StaffQuery$tests_info_staff_aggregate<
    Query$StaffQuery$tests_info_staff_aggregate
  >
  get copyWith =>
      CopyWith$Query$StaffQuery$tests_info_staff_aggregate(this, (i) => i);
}

abstract class CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes> {
  factory CopyWith$Query$StaffQuery$tests_info_staff_aggregate(
    Query$StaffQuery$tests_info_staff_aggregate instance,
    TRes Function(Query$StaffQuery$tests_info_staff_aggregate) then,
  ) = _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate;

  factory CopyWith$Query$StaffQuery$tests_info_staff_aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate;

  TRes call({
    Query$StaffQuery$tests_info_staff_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes>
  get aggregate;
}

class _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate<TRes>
    implements CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes> {
  _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate(
    this._instance,
    this._then,
  );

  final Query$StaffQuery$tests_info_staff_aggregate _instance;

  final TRes Function(Query$StaffQuery$tests_info_staff_aggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffQuery$tests_info_staff_aggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Query$StaffQuery$tests_info_staff_aggregate$aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes>
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate<TRes>
    implements CopyWith$Query$StaffQuery$tests_info_staff_aggregate<TRes> {
  _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate(this._res);

  TRes _res;

  call({
    Query$StaffQuery$tests_info_staff_aggregate$aggregate? aggregate,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes>
  get aggregate =>
      CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate.stub(_res);
}

class Query$StaffQuery$tests_info_staff_aggregate$aggregate {
  Query$StaffQuery$tests_info_staff_aggregate$aggregate({
    required this.count,
    this.$__typename = 'tests_info_staff_aggregate_fields',
  });

  factory Query$StaffQuery$tests_info_staff_aggregate$aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$StaffQuery$tests_info_staff_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffQuery$tests_info_staff_aggregate$aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$StaffQuery$tests_info_staff_aggregate$aggregate
    on Query$StaffQuery$tests_info_staff_aggregate$aggregate {
  CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<
    Query$StaffQuery$tests_info_staff_aggregate$aggregate
  >
  get copyWith =>
      CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<
  TRes
> {
  factory CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate(
    Query$StaffQuery$tests_info_staff_aggregate$aggregate instance,
    TRes Function(Query$StaffQuery$tests_info_staff_aggregate$aggregate) then,
  ) = _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate;

  factory CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes>
    implements
        CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes> {
  _CopyWithImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$StaffQuery$tests_info_staff_aggregate$aggregate _instance;

  final TRes Function(Query$StaffQuery$tests_info_staff_aggregate$aggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$StaffQuery$tests_info_staff_aggregate$aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate<
  TRes
>
    implements
        CopyWith$Query$StaffQuery$tests_info_staff_aggregate$aggregate<TRes> {
  _CopyWithStubImpl$Query$StaffQuery$tests_info_staff_aggregate$aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables$Mutation$InsertStaff {
  factory Variables$Mutation$InsertStaff({
    required List<Input$tests_info_staff_insert_input> objects,
  }) => Variables$Mutation$InsertStaff._({r'objects': objects});

  Variables$Mutation$InsertStaff._(this._$data);

  factory Variables$Mutation$InsertStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$objects = data['objects'];
    result$data['objects'] = (l$objects as List<dynamic>)
        .map(
          (e) => Input$tests_info_staff_insert_input.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    return Variables$Mutation$InsertStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$tests_info_staff_insert_input> get objects =>
      (_$data['objects'] as List<Input$tests_info_staff_insert_input>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$objects = objects;
    result$data['objects'] = l$objects.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertStaff<Variables$Mutation$InsertStaff>
  get copyWith => CopyWith$Variables$Mutation$InsertStaff(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InsertStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objects = objects;
    final lOther$objects = other.objects;
    if (l$objects.length != lOther$objects.length) {
      return false;
    }
    for (int i = 0; i < l$objects.length; i++) {
      final l$objects$entry = l$objects[i];
      final lOther$objects$entry = lOther$objects[i];
      if (l$objects$entry != lOther$objects$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$objects = objects;
    return Object.hashAll([Object.hashAll(l$objects.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$InsertStaff<TRes> {
  factory CopyWith$Variables$Mutation$InsertStaff(
    Variables$Mutation$InsertStaff instance,
    TRes Function(Variables$Mutation$InsertStaff) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertStaff;

  factory CopyWith$Variables$Mutation$InsertStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertStaff;

  TRes call({List<Input$tests_info_staff_insert_input>? objects});
}

class _CopyWithImpl$Variables$Mutation$InsertStaff<TRes>
    implements CopyWith$Variables$Mutation$InsertStaff<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertStaff(this._instance, this._then);

  final Variables$Mutation$InsertStaff _instance;

  final TRes Function(Variables$Mutation$InsertStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? objects = _undefined}) => _then(
    Variables$Mutation$InsertStaff._({
      ..._instance._$data,
      if (objects != _undefined && objects != null)
        'objects': (objects as List<Input$tests_info_staff_insert_input>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$InsertStaff<TRes>
    implements CopyWith$Variables$Mutation$InsertStaff<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertStaff(this._res);

  TRes _res;

  call({List<Input$tests_info_staff_insert_input>? objects}) => _res;
}

class Mutation$InsertStaff {
  Mutation$InsertStaff({
    this.insert_tests_info_staff,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertStaff.fromJson(Map<String, dynamic> json) {
    final l$insert_tests_info_staff = json['insert_tests_info_staff'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertStaff(
      insert_tests_info_staff: l$insert_tests_info_staff == null
          ? null
          : Mutation$InsertStaff$insert_tests_info_staff.fromJson(
              (l$insert_tests_info_staff as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InsertStaff$insert_tests_info_staff? insert_tests_info_staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_tests_info_staff = insert_tests_info_staff;
    _resultData['insert_tests_info_staff'] = l$insert_tests_info_staff
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_tests_info_staff = insert_tests_info_staff;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insert_tests_info_staff, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InsertStaff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_tests_info_staff = insert_tests_info_staff;
    final lOther$insert_tests_info_staff = other.insert_tests_info_staff;
    if (l$insert_tests_info_staff != lOther$insert_tests_info_staff) {
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

extension UtilityExtension$Mutation$InsertStaff on Mutation$InsertStaff {
  CopyWith$Mutation$InsertStaff<Mutation$InsertStaff> get copyWith =>
      CopyWith$Mutation$InsertStaff(this, (i) => i);
}

abstract class CopyWith$Mutation$InsertStaff<TRes> {
  factory CopyWith$Mutation$InsertStaff(
    Mutation$InsertStaff instance,
    TRes Function(Mutation$InsertStaff) then,
  ) = _CopyWithImpl$Mutation$InsertStaff;

  factory CopyWith$Mutation$InsertStaff.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertStaff;

  TRes call({
    Mutation$InsertStaff$insert_tests_info_staff? insert_tests_info_staff,
    String? $__typename,
  });
  CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes>
  get insert_tests_info_staff;
}

class _CopyWithImpl$Mutation$InsertStaff<TRes>
    implements CopyWith$Mutation$InsertStaff<TRes> {
  _CopyWithImpl$Mutation$InsertStaff(this._instance, this._then);

  final Mutation$InsertStaff _instance;

  final TRes Function(Mutation$InsertStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_tests_info_staff = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InsertStaff(
      insert_tests_info_staff: insert_tests_info_staff == _undefined
          ? _instance.insert_tests_info_staff
          : (insert_tests_info_staff
                as Mutation$InsertStaff$insert_tests_info_staff?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes>
  get insert_tests_info_staff {
    final local$insert_tests_info_staff = _instance.insert_tests_info_staff;
    return local$insert_tests_info_staff == null
        ? CopyWith$Mutation$InsertStaff$insert_tests_info_staff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InsertStaff$insert_tests_info_staff(
            local$insert_tests_info_staff,
            (e) => call(insert_tests_info_staff: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InsertStaff<TRes>
    implements CopyWith$Mutation$InsertStaff<TRes> {
  _CopyWithStubImpl$Mutation$InsertStaff(this._res);

  TRes _res;

  call({
    Mutation$InsertStaff$insert_tests_info_staff? insert_tests_info_staff,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes>
  get insert_tests_info_staff =>
      CopyWith$Mutation$InsertStaff$insert_tests_info_staff.stub(_res);
}

const documentNodeMutationInsertStaff = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InsertStaff'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'objects')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'tests_info_staff_insert_input'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'insert_tests_info_staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(name: NameNode(value: 'objects')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'returning'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'info_staff_id'),
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
Mutation$InsertStaff _parserFn$Mutation$InsertStaff(
  Map<String, dynamic> data,
) => Mutation$InsertStaff.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertStaff =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$InsertStaff?);

class Options$Mutation$InsertStaff
    extends graphql.MutationOptions<Mutation$InsertStaff> {
  Options$Mutation$InsertStaff({
    String? operationName,
    required Variables$Mutation$InsertStaff variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertStaff>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$InsertStaff(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInsertStaff,
         parserFn: _parserFn$Mutation$InsertStaff,
       );

  final OnMutationCompleted$Mutation$InsertStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InsertStaff
    extends graphql.WatchQueryOptions<Mutation$InsertStaff> {
  WatchOptions$Mutation$InsertStaff({
    String? operationName,
    required Variables$Mutation$InsertStaff variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertStaff? typedOptimisticResult,
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
         document: documentNodeMutationInsertStaff,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InsertStaff,
       );
}

extension ClientExtension$Mutation$InsertStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertStaff>> mutate$InsertStaff(
    Options$Mutation$InsertStaff options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InsertStaff> watchMutation$InsertStaff(
    WatchOptions$Mutation$InsertStaff options,
  ) => this.watchMutation(options);
}

class Mutation$InsertStaff$HookResult {
  Mutation$InsertStaff$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InsertStaff runMutation;

  final graphql.QueryResult<Mutation$InsertStaff> result;
}

Mutation$InsertStaff$HookResult useMutation$InsertStaff([
  WidgetOptions$Mutation$InsertStaff? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InsertStaff(),
  );
  return Mutation$InsertStaff$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertStaff> useWatchMutation$InsertStaff(
  WatchOptions$Mutation$InsertStaff options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertStaff
    extends graphql.MutationOptions<Mutation$InsertStaff> {
  WidgetOptions$Mutation$InsertStaff({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertStaff>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$InsertStaff(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInsertStaff,
         parserFn: _parserFn$Mutation$InsertStaff,
       );

  final OnMutationCompleted$Mutation$InsertStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InsertStaff =
    graphql.MultiSourceResult<Mutation$InsertStaff> Function(
      Variables$Mutation$InsertStaff, {
      Object? optimisticResult,
      Mutation$InsertStaff? typedOptimisticResult,
    });
typedef Builder$Mutation$InsertStaff =
    widgets.Widget Function(
      RunMutation$Mutation$InsertStaff,
      graphql.QueryResult<Mutation$InsertStaff>?,
    );

class Mutation$InsertStaff$Widget
    extends graphql_flutter.Mutation<Mutation$InsertStaff> {
  Mutation$InsertStaff$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertStaff? options,
    required Builder$Mutation$InsertStaff builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InsertStaff(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$InsertStaff$insert_tests_info_staff {
  Mutation$InsertStaff$insert_tests_info_staff({
    required this.returning,
    this.$__typename = 'tests_info_staff_mutation_response',
  });

  factory Mutation$InsertStaff$insert_tests_info_staff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertStaff$insert_tests_info_staff(
      returning: (l$returning as List<dynamic>)
          .map(
            (e) =>
                Mutation$InsertStaff$insert_tests_info_staff$returning.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$InsertStaff$insert_tests_info_staff$returning> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InsertStaff$insert_tests_info_staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension$Mutation$InsertStaff$insert_tests_info_staff
    on Mutation$InsertStaff$insert_tests_info_staff {
  CopyWith$Mutation$InsertStaff$insert_tests_info_staff<
    Mutation$InsertStaff$insert_tests_info_staff
  >
  get copyWith =>
      CopyWith$Mutation$InsertStaff$insert_tests_info_staff(this, (i) => i);
}

abstract class CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes> {
  factory CopyWith$Mutation$InsertStaff$insert_tests_info_staff(
    Mutation$InsertStaff$insert_tests_info_staff instance,
    TRes Function(Mutation$InsertStaff$insert_tests_info_staff) then,
  ) = _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff;

  factory CopyWith$Mutation$InsertStaff$insert_tests_info_staff.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff;

  TRes call({
    List<Mutation$InsertStaff$insert_tests_info_staff$returning>? returning,
    String? $__typename,
  });
  TRes returning(
    Iterable<Mutation$InsertStaff$insert_tests_info_staff$returning> Function(
      Iterable<
        CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<
          Mutation$InsertStaff$insert_tests_info_staff$returning
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff<TRes>
    implements CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes> {
  _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff(
    this._instance,
    this._then,
  );

  final Mutation$InsertStaff$insert_tests_info_staff _instance;

  final TRes Function(Mutation$InsertStaff$insert_tests_info_staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InsertStaff$insert_tests_info_staff(
      returning: returning == _undefined || returning == null
          ? _instance.returning
          : (returning
                as List<
                  Mutation$InsertStaff$insert_tests_info_staff$returning
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes returning(
    Iterable<Mutation$InsertStaff$insert_tests_info_staff$returning> Function(
      Iterable<
        CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<
          Mutation$InsertStaff$insert_tests_info_staff$returning
        >
      >,
    )
    _fn,
  ) => call(
    returning: _fn(
      _instance.returning.map(
        (e) => CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff<TRes>
    implements CopyWith$Mutation$InsertStaff$insert_tests_info_staff<TRes> {
  _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff(this._res);

  TRes _res;

  call({
    List<Mutation$InsertStaff$insert_tests_info_staff$returning>? returning,
    String? $__typename,
  }) => _res;

  returning(_fn) => _res;
}

class Mutation$InsertStaff$insert_tests_info_staff$returning {
  Mutation$InsertStaff$insert_tests_info_staff$returning({
    required this.info_staff_id,
    this.$__typename = 'tests_info_staff',
  });

  factory Mutation$InsertStaff$insert_tests_info_staff$returning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$info_staff_id = json['info_staff_id'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertStaff$insert_tests_info_staff$returning(
      info_staff_id: (l$info_staff_id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String info_staff_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info_staff_id = info_staff_id;
    _resultData['info_staff_id'] = l$info_staff_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info_staff_id = info_staff_id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$info_staff_id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InsertStaff$insert_tests_info_staff$returning ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info_staff_id = info_staff_id;
    final lOther$info_staff_id = other.info_staff_id;
    if (l$info_staff_id != lOther$info_staff_id) {
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

extension UtilityExtension$Mutation$InsertStaff$insert_tests_info_staff$returning
    on Mutation$InsertStaff$insert_tests_info_staff$returning {
  CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<
    Mutation$InsertStaff$insert_tests_info_staff$returning
  >
  get copyWith =>
      CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<
  TRes
> {
  factory CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning(
    Mutation$InsertStaff$insert_tests_info_staff$returning instance,
    TRes Function(Mutation$InsertStaff$insert_tests_info_staff$returning) then,
  ) = _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff$returning;

  factory CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff$returning;

  TRes call({String? info_staff_id, String? $__typename});
}

class _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff$returning<TRes>
    implements
        CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<TRes> {
  _CopyWithImpl$Mutation$InsertStaff$insert_tests_info_staff$returning(
    this._instance,
    this._then,
  );

  final Mutation$InsertStaff$insert_tests_info_staff$returning _instance;

  final TRes Function(Mutation$InsertStaff$insert_tests_info_staff$returning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info_staff_id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InsertStaff$insert_tests_info_staff$returning(
      info_staff_id: info_staff_id == _undefined || info_staff_id == null
          ? _instance.info_staff_id
          : (info_staff_id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff$returning<
  TRes
>
    implements
        CopyWith$Mutation$InsertStaff$insert_tests_info_staff$returning<TRes> {
  _CopyWithStubImpl$Mutation$InsertStaff$insert_tests_info_staff$returning(
    this._res,
  );

  TRes _res;

  call({String? info_staff_id, String? $__typename}) => _res;
}

class Variables$Mutation$UpdateStaff {
  factory Variables$Mutation$UpdateStaff({
    Input$tests_info_staff_set_input? $_set,
    String? $_eq,
  }) => Variables$Mutation$UpdateStaff._({
    if ($_set != null) r'_set': $_set,
    if ($_eq != null) r'_eq': $_eq,
  });

  Variables$Mutation$UpdateStaff._(this._$data);

  factory Variables$Mutation$UpdateStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$tests_info_staff_set_input.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    return Variables$Mutation$UpdateStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$tests_info_staff_set_input? get $_set =>
      (_$data['_set'] as Input$tests_info_staff_set_input?);

  String? get $_eq => (_$data['_eq'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateStaff<Variables$Mutation$UpdateStaff>
  get copyWith => CopyWith$Variables$Mutation$UpdateStaff(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$$_eq = $_eq;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      _$data.containsKey('_eq') ? l$$_eq : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateStaff<TRes> {
  factory CopyWith$Variables$Mutation$UpdateStaff(
    Variables$Mutation$UpdateStaff instance,
    TRes Function(Variables$Mutation$UpdateStaff) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateStaff;

  factory CopyWith$Variables$Mutation$UpdateStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateStaff;

  TRes call({Input$tests_info_staff_set_input? $_set, String? $_eq});
}

class _CopyWithImpl$Variables$Mutation$UpdateStaff<TRes>
    implements CopyWith$Variables$Mutation$UpdateStaff<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateStaff(this._instance, this._then);

  final Variables$Mutation$UpdateStaff _instance;

  final TRes Function(Variables$Mutation$UpdateStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? $_eq = _undefined}) => _then(
    Variables$Mutation$UpdateStaff._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input$tests_info_staff_set_input?),
      if ($_eq != _undefined) '_eq': ($_eq as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateStaff<TRes>
    implements CopyWith$Variables$Mutation$UpdateStaff<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateStaff(this._res);

  TRes _res;

  call({Input$tests_info_staff_set_input? $_set, String? $_eq}) => _res;
}

class Mutation$UpdateStaff {
  Mutation$UpdateStaff({
    this.update_tests_info_staff,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateStaff.fromJson(Map<String, dynamic> json) {
    final l$update_tests_info_staff = json['update_tests_info_staff'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStaff(
      update_tests_info_staff: l$update_tests_info_staff == null
          ? null
          : Mutation$UpdateStaff$update_tests_info_staff.fromJson(
              (l$update_tests_info_staff as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateStaff$update_tests_info_staff? update_tests_info_staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_tests_info_staff = update_tests_info_staff;
    _resultData['update_tests_info_staff'] = l$update_tests_info_staff
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_tests_info_staff = update_tests_info_staff;
    final l$$__typename = $__typename;
    return Object.hashAll([l$update_tests_info_staff, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStaff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_tests_info_staff = update_tests_info_staff;
    final lOther$update_tests_info_staff = other.update_tests_info_staff;
    if (l$update_tests_info_staff != lOther$update_tests_info_staff) {
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

extension UtilityExtension$Mutation$UpdateStaff on Mutation$UpdateStaff {
  CopyWith$Mutation$UpdateStaff<Mutation$UpdateStaff> get copyWith =>
      CopyWith$Mutation$UpdateStaff(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStaff<TRes> {
  factory CopyWith$Mutation$UpdateStaff(
    Mutation$UpdateStaff instance,
    TRes Function(Mutation$UpdateStaff) then,
  ) = _CopyWithImpl$Mutation$UpdateStaff;

  factory CopyWith$Mutation$UpdateStaff.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStaff;

  TRes call({
    Mutation$UpdateStaff$update_tests_info_staff? update_tests_info_staff,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes>
  get update_tests_info_staff;
}

class _CopyWithImpl$Mutation$UpdateStaff<TRes>
    implements CopyWith$Mutation$UpdateStaff<TRes> {
  _CopyWithImpl$Mutation$UpdateStaff(this._instance, this._then);

  final Mutation$UpdateStaff _instance;

  final TRes Function(Mutation$UpdateStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_tests_info_staff = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStaff(
      update_tests_info_staff: update_tests_info_staff == _undefined
          ? _instance.update_tests_info_staff
          : (update_tests_info_staff
                as Mutation$UpdateStaff$update_tests_info_staff?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes>
  get update_tests_info_staff {
    final local$update_tests_info_staff = _instance.update_tests_info_staff;
    return local$update_tests_info_staff == null
        ? CopyWith$Mutation$UpdateStaff$update_tests_info_staff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateStaff$update_tests_info_staff(
            local$update_tests_info_staff,
            (e) => call(update_tests_info_staff: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStaff<TRes>
    implements CopyWith$Mutation$UpdateStaff<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStaff(this._res);

  TRes _res;

  call({
    Mutation$UpdateStaff$update_tests_info_staff? update_tests_info_staff,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes>
  get update_tests_info_staff =>
      CopyWith$Mutation$UpdateStaff$update_tests_info_staff.stub(_res);
}

const documentNodeMutationUpdateStaff = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateStaff'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: '_set')),
          type: NamedTypeNode(
            name: NameNode(value: 'tests_info_staff_set_input'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: '_eq')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(
            value: StringValueNode(value: '', isBlock: false),
          ),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'update_tests_info_staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'info_staff_id'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(name: NameNode(value: '_eq')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: '_set')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'returning'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'info_company_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'info_office_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'info_staff_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'kana'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'private_phone'),
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
                        name: NameNode(value: 'remove'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'revision'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sex'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'update_at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'update_user_history_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'update_user_id'),
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
Mutation$UpdateStaff _parserFn$Mutation$UpdateStaff(
  Map<String, dynamic> data,
) => Mutation$UpdateStaff.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateStaff =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$UpdateStaff?);

class Options$Mutation$UpdateStaff
    extends graphql.MutationOptions<Mutation$UpdateStaff> {
  Options$Mutation$UpdateStaff({
    String? operationName,
    Variables$Mutation$UpdateStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateStaff>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$UpdateStaff(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateStaff,
         parserFn: _parserFn$Mutation$UpdateStaff,
       );

  final OnMutationCompleted$Mutation$UpdateStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UpdateStaff
    extends graphql.WatchQueryOptions<Mutation$UpdateStaff> {
  WatchOptions$Mutation$UpdateStaff({
    String? operationName,
    Variables$Mutation$UpdateStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStaff? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationUpdateStaff,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UpdateStaff,
       );
}

extension ClientExtension$Mutation$UpdateStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateStaff>> mutate$UpdateStaff([
    Options$Mutation$UpdateStaff? options,
  ]) async => await this.mutate(options ?? Options$Mutation$UpdateStaff());

  graphql.ObservableQuery<Mutation$UpdateStaff> watchMutation$UpdateStaff([
    WatchOptions$Mutation$UpdateStaff? options,
  ]) => this.watchMutation(options ?? WatchOptions$Mutation$UpdateStaff());
}

class Mutation$UpdateStaff$HookResult {
  Mutation$UpdateStaff$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateStaff runMutation;

  final graphql.QueryResult<Mutation$UpdateStaff> result;
}

Mutation$UpdateStaff$HookResult useMutation$UpdateStaff([
  WidgetOptions$Mutation$UpdateStaff? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$UpdateStaff(),
  );
  return Mutation$UpdateStaff$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables?.toJson() ?? const {},
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateStaff> useWatchMutation$UpdateStaff([
  WatchOptions$Mutation$UpdateStaff? options,
]) => graphql_flutter.useWatchMutation(
  options ?? WatchOptions$Mutation$UpdateStaff(),
);

class WidgetOptions$Mutation$UpdateStaff
    extends graphql.MutationOptions<Mutation$UpdateStaff> {
  WidgetOptions$Mutation$UpdateStaff({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateStaff>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$UpdateStaff(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateStaff,
         parserFn: _parserFn$Mutation$UpdateStaff,
       );

  final OnMutationCompleted$Mutation$UpdateStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$UpdateStaff =
    graphql.MultiSourceResult<Mutation$UpdateStaff> Function({
      Variables$Mutation$UpdateStaff? variables,
      Object? optimisticResult,
      Mutation$UpdateStaff? typedOptimisticResult,
    });
typedef Builder$Mutation$UpdateStaff =
    widgets.Widget Function(
      RunMutation$Mutation$UpdateStaff,
      graphql.QueryResult<Mutation$UpdateStaff>?,
    );

class Mutation$UpdateStaff$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateStaff> {
  Mutation$UpdateStaff$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateStaff? options,
    required Builder$Mutation$UpdateStaff builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$UpdateStaff(),
         builder: (run, result) => builder(
           ({variables, optimisticResult, typedOptimisticResult}) => run(
             variables?.toJson() ?? const {},
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$UpdateStaff$update_tests_info_staff {
  Mutation$UpdateStaff$update_tests_info_staff({
    required this.returning,
    this.$__typename = 'tests_info_staff_mutation_response',
  });

  factory Mutation$UpdateStaff$update_tests_info_staff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStaff$update_tests_info_staff(
      returning: (l$returning as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdateStaff$update_tests_info_staff$returning.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$UpdateStaff$update_tests_info_staff$returning> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStaff$update_tests_info_staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension$Mutation$UpdateStaff$update_tests_info_staff
    on Mutation$UpdateStaff$update_tests_info_staff {
  CopyWith$Mutation$UpdateStaff$update_tests_info_staff<
    Mutation$UpdateStaff$update_tests_info_staff
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStaff$update_tests_info_staff(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes> {
  factory CopyWith$Mutation$UpdateStaff$update_tests_info_staff(
    Mutation$UpdateStaff$update_tests_info_staff instance,
    TRes Function(Mutation$UpdateStaff$update_tests_info_staff) then,
  ) = _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff;

  factory CopyWith$Mutation$UpdateStaff$update_tests_info_staff.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff;

  TRes call({
    List<Mutation$UpdateStaff$update_tests_info_staff$returning>? returning,
    String? $__typename,
  });
  TRes returning(
    Iterable<Mutation$UpdateStaff$update_tests_info_staff$returning> Function(
      Iterable<
        CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<
          Mutation$UpdateStaff$update_tests_info_staff$returning
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff<TRes>
    implements CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes> {
  _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStaff$update_tests_info_staff _instance;

  final TRes Function(Mutation$UpdateStaff$update_tests_info_staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStaff$update_tests_info_staff(
      returning: returning == _undefined || returning == null
          ? _instance.returning
          : (returning
                as List<
                  Mutation$UpdateStaff$update_tests_info_staff$returning
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes returning(
    Iterable<Mutation$UpdateStaff$update_tests_info_staff$returning> Function(
      Iterable<
        CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<
          Mutation$UpdateStaff$update_tests_info_staff$returning
        >
      >,
    )
    _fn,
  ) => call(
    returning: _fn(
      _instance.returning.map(
        (e) => CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff<TRes>
    implements CopyWith$Mutation$UpdateStaff$update_tests_info_staff<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff(this._res);

  TRes _res;

  call({
    List<Mutation$UpdateStaff$update_tests_info_staff$returning>? returning,
    String? $__typename,
  }) => _res;

  returning(_fn) => _res;
}

class Mutation$UpdateStaff$update_tests_info_staff$returning {
  Mutation$UpdateStaff$update_tests_info_staff$returning({
    this.code,
    this.info_company_id,
    this.info_office_id,
    required this.info_staff_id,
    this.kana,
    required this.name,
    this.phone,
    this.private_phone,
    this.remarks,
    this.remove,
    this.revision,
    this.sex,
    this.update_at,
    this.update_user_history_id,
    this.update_user_id,
    this.$__typename = 'tests_info_staff',
  });

  factory Mutation$UpdateStaff$update_tests_info_staff$returning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$info_company_id = json['info_company_id'];
    final l$info_office_id = json['info_office_id'];
    final l$info_staff_id = json['info_staff_id'];
    final l$kana = json['kana'];
    final l$name = json['name'];
    final l$phone = json['phone'];
    final l$private_phone = json['private_phone'];
    final l$remarks = json['remarks'];
    final l$remove = json['remove'];
    final l$revision = json['revision'];
    final l$sex = json['sex'];
    final l$update_at = json['update_at'];
    final l$update_user_history_id = json['update_user_history_id'];
    final l$update_user_id = json['update_user_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStaff$update_tests_info_staff$returning(
      code: (l$code as String?),
      info_company_id: (l$info_company_id as String?),
      info_office_id: (l$info_office_id as String?),
      info_staff_id: (l$info_staff_id as String),
      kana: (l$kana as String?),
      name: (l$name as String),
      phone: (l$phone as String?),
      private_phone: (l$private_phone as String?),
      remarks: (l$remarks as String?),
      remove: (l$remove as bool?),
      revision: (l$revision as int?),
      sex: (l$sex as String?),
      update_at: (l$update_at as String?),
      update_user_history_id: (l$update_user_history_id as String?),
      update_user_id: (l$update_user_id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? code;

  final String? info_company_id;

  final String? info_office_id;

  final String info_staff_id;

  final String? kana;

  final String name;

  final String? phone;

  final String? private_phone;

  final String? remarks;

  final bool? remove;

  final int? revision;

  final String? sex;

  final String? update_at;

  final String? update_user_history_id;

  final String? update_user_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$info_company_id = info_company_id;
    _resultData['info_company_id'] = l$info_company_id;
    final l$info_office_id = info_office_id;
    _resultData['info_office_id'] = l$info_office_id;
    final l$info_staff_id = info_staff_id;
    _resultData['info_staff_id'] = l$info_staff_id;
    final l$kana = kana;
    _resultData['kana'] = l$kana;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$private_phone = private_phone;
    _resultData['private_phone'] = l$private_phone;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$revision = revision;
    _resultData['revision'] = l$revision;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$update_at = update_at;
    _resultData['update_at'] = l$update_at;
    final l$update_user_history_id = update_user_history_id;
    _resultData['update_user_history_id'] = l$update_user_history_id;
    final l$update_user_id = update_user_id;
    _resultData['update_user_id'] = l$update_user_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$info_company_id = info_company_id;
    final l$info_office_id = info_office_id;
    final l$info_staff_id = info_staff_id;
    final l$kana = kana;
    final l$name = name;
    final l$phone = phone;
    final l$private_phone = private_phone;
    final l$remarks = remarks;
    final l$remove = remove;
    final l$revision = revision;
    final l$sex = sex;
    final l$update_at = update_at;
    final l$update_user_history_id = update_user_history_id;
    final l$update_user_id = update_user_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$info_company_id,
      l$info_office_id,
      l$info_staff_id,
      l$kana,
      l$name,
      l$phone,
      l$private_phone,
      l$remarks,
      l$remove,
      l$revision,
      l$sex,
      l$update_at,
      l$update_user_history_id,
      l$update_user_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStaff$update_tests_info_staff$returning ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$info_company_id = info_company_id;
    final lOther$info_company_id = other.info_company_id;
    if (l$info_company_id != lOther$info_company_id) {
      return false;
    }
    final l$info_office_id = info_office_id;
    final lOther$info_office_id = other.info_office_id;
    if (l$info_office_id != lOther$info_office_id) {
      return false;
    }
    final l$info_staff_id = info_staff_id;
    final lOther$info_staff_id = other.info_staff_id;
    if (l$info_staff_id != lOther$info_staff_id) {
      return false;
    }
    final l$kana = kana;
    final lOther$kana = other.kana;
    if (l$kana != lOther$kana) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$private_phone = private_phone;
    final lOther$private_phone = other.private_phone;
    if (l$private_phone != lOther$private_phone) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$revision = revision;
    final lOther$revision = other.revision;
    if (l$revision != lOther$revision) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$update_at = update_at;
    final lOther$update_at = other.update_at;
    if (l$update_at != lOther$update_at) {
      return false;
    }
    final l$update_user_history_id = update_user_history_id;
    final lOther$update_user_history_id = other.update_user_history_id;
    if (l$update_user_history_id != lOther$update_user_history_id) {
      return false;
    }
    final l$update_user_id = update_user_id;
    final lOther$update_user_id = other.update_user_id;
    if (l$update_user_id != lOther$update_user_id) {
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

extension UtilityExtension$Mutation$UpdateStaff$update_tests_info_staff$returning
    on Mutation$UpdateStaff$update_tests_info_staff$returning {
  CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<
    Mutation$UpdateStaff$update_tests_info_staff$returning
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<
  TRes
> {
  factory CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning(
    Mutation$UpdateStaff$update_tests_info_staff$returning instance,
    TRes Function(Mutation$UpdateStaff$update_tests_info_staff$returning) then,
  ) = _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff$returning;

  factory CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff$returning;

  TRes call({
    String? code,
    String? info_company_id,
    String? info_office_id,
    String? info_staff_id,
    String? kana,
    String? name,
    String? phone,
    String? private_phone,
    String? remarks,
    bool? remove,
    int? revision,
    String? sex,
    String? update_at,
    String? update_user_history_id,
    String? update_user_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff$returning<TRes>
    implements
        CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<TRes> {
  _CopyWithImpl$Mutation$UpdateStaff$update_tests_info_staff$returning(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStaff$update_tests_info_staff$returning _instance;

  final TRes Function(Mutation$UpdateStaff$update_tests_info_staff$returning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? info_company_id = _undefined,
    Object? info_office_id = _undefined,
    Object? info_staff_id = _undefined,
    Object? kana = _undefined,
    Object? name = _undefined,
    Object? phone = _undefined,
    Object? private_phone = _undefined,
    Object? remarks = _undefined,
    Object? remove = _undefined,
    Object? revision = _undefined,
    Object? sex = _undefined,
    Object? update_at = _undefined,
    Object? update_user_history_id = _undefined,
    Object? update_user_id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStaff$update_tests_info_staff$returning(
      code: code == _undefined ? _instance.code : (code as String?),
      info_company_id: info_company_id == _undefined
          ? _instance.info_company_id
          : (info_company_id as String?),
      info_office_id: info_office_id == _undefined
          ? _instance.info_office_id
          : (info_office_id as String?),
      info_staff_id: info_staff_id == _undefined || info_staff_id == null
          ? _instance.info_staff_id
          : (info_staff_id as String),
      kana: kana == _undefined ? _instance.kana : (kana as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      private_phone: private_phone == _undefined
          ? _instance.private_phone
          : (private_phone as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      revision: revision == _undefined
          ? _instance.revision
          : (revision as int?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      update_at: update_at == _undefined
          ? _instance.update_at
          : (update_at as String?),
      update_user_history_id: update_user_history_id == _undefined
          ? _instance.update_user_history_id
          : (update_user_history_id as String?),
      update_user_id: update_user_id == _undefined
          ? _instance.update_user_id
          : (update_user_id as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff$returning<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStaff$update_tests_info_staff$returning<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStaff$update_tests_info_staff$returning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? info_company_id,
    String? info_office_id,
    String? info_staff_id,
    String? kana,
    String? name,
    String? phone,
    String? private_phone,
    String? remarks,
    bool? remove,
    int? revision,
    String? sex,
    String? update_at,
    String? update_user_history_id,
    String? update_user_id,
    String? $__typename,
  }) => _res;
}
