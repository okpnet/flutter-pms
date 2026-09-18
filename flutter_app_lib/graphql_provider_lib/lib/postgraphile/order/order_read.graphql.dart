import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OrderRead {
  factory Variables$Query$OrderRead({
    required int first,
    int? offset,
    Input$TransOrderCondition? condition,
    List<Enum$TransOrdersOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$OrderRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$OrderRead._(this._$data);

  factory Variables$Query$OrderRead.fromJson(Map<String, dynamic> data) {
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
          : Input$TransOrderCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransOrdersOrderBy((e as String)))
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
    return Variables$Query$OrderRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransOrderCondition? get condition =>
      (_$data['condition'] as Input$TransOrderCondition?);

  List<Enum$TransOrdersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransOrdersOrderBy>?);

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
          ?.map((e) => toJson$Enum$TransOrdersOrderBy(e))
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

  CopyWith$Variables$Query$OrderRead<Variables$Query$OrderRead> get copyWith =>
      CopyWith$Variables$Query$OrderRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderRead ||
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

abstract class CopyWith$Variables$Query$OrderRead<TRes> {
  factory CopyWith$Variables$Query$OrderRead(
    Variables$Query$OrderRead instance,
    TRes Function(Variables$Query$OrderRead) then,
  ) = _CopyWithImpl$Variables$Query$OrderRead;

  factory CopyWith$Variables$Query$OrderRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransOrderCondition? condition,
    List<Enum$TransOrdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$OrderRead<TRes>
    implements CopyWith$Variables$Query$OrderRead<TRes> {
  _CopyWithImpl$Variables$Query$OrderRead(this._instance, this._then);

  final Variables$Query$OrderRead _instance;

  final TRes Function(Variables$Query$OrderRead) _then;

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
    Variables$Query$OrderRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$TransOrderCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransOrdersOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderRead<TRes>
    implements CopyWith$Variables$Query$OrderRead<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransOrderCondition? condition,
    List<Enum$TransOrdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$OrderRead {
  Query$OrderRead({this.allTransOrders, this.$__typename = 'Query'});

  factory Query$OrderRead.fromJson(Map<String, dynamic> json) {
    final l$allTransOrders = json['allTransOrders'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead(
      allTransOrders: l$allTransOrders == null
          ? null
          : Query$OrderRead$allTransOrders.fromJson(
              (l$allTransOrders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderRead$allTransOrders? allTransOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransOrders = allTransOrders;
    _resultData['allTransOrders'] = l$allTransOrders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransOrders = allTransOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransOrders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransOrders = allTransOrders;
    final lOther$allTransOrders = other.allTransOrders;
    if (l$allTransOrders != lOther$allTransOrders) {
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

extension UtilityExtension$Query$OrderRead on Query$OrderRead {
  CopyWith$Query$OrderRead<Query$OrderRead> get copyWith =>
      CopyWith$Query$OrderRead(this, (i) => i);
}

abstract class CopyWith$Query$OrderRead<TRes> {
  factory CopyWith$Query$OrderRead(
    Query$OrderRead instance,
    TRes Function(Query$OrderRead) then,
  ) = _CopyWithImpl$Query$OrderRead;

  factory CopyWith$Query$OrderRead.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderRead;

  TRes call({
    Query$OrderRead$allTransOrders? allTransOrders,
    String? $__typename,
  });
  CopyWith$Query$OrderRead$allTransOrders<TRes> get allTransOrders;
}

class _CopyWithImpl$Query$OrderRead<TRes>
    implements CopyWith$Query$OrderRead<TRes> {
  _CopyWithImpl$Query$OrderRead(this._instance, this._then);

  final Query$OrderRead _instance;

  final TRes Function(Query$OrderRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransOrders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead(
      allTransOrders: allTransOrders == _undefined
          ? _instance.allTransOrders
          : (allTransOrders as Query$OrderRead$allTransOrders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderRead$allTransOrders<TRes> get allTransOrders {
    final local$allTransOrders = _instance.allTransOrders;
    return local$allTransOrders == null
        ? CopyWith$Query$OrderRead$allTransOrders.stub(_then(_instance))
        : CopyWith$Query$OrderRead$allTransOrders(
            local$allTransOrders,
            (e) => call(allTransOrders: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderRead<TRes>
    implements CopyWith$Query$OrderRead<TRes> {
  _CopyWithStubImpl$Query$OrderRead(this._res);

  TRes _res;

  call({Query$OrderRead$allTransOrders? allTransOrders, String? $__typename}) =>
      _res;

  CopyWith$Query$OrderRead$allTransOrders<TRes> get allTransOrders =>
      CopyWith$Query$OrderRead$allTransOrders.stub(_res);
}

const documentNodeQueryOrderRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderRead'),
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
            name: NameNode(value: 'TransOrderCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransOrdersOrderBy'),
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
            name: NameNode(value: 'allTransOrders'),
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
                        name: NameNode(value: 'transOrderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'orderNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'customerOrderNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode3'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'orderProcessingDate'),
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
                        name: NameNode(value: 'customerHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId',
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
                        name: NameNode(value: 'contactHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderConcatId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId',
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
                              name: NameNode(value: 'officeAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'departmentAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'contactPersonAppellationsId',
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
                        name: NameNode(
                          value: 'transOrderDetailsByTransOrderId',
                        ),
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
Query$OrderRead _parserFn$Query$OrderRead(Map<String, dynamic> data) =>
    Query$OrderRead.fromJson(data);
typedef OnQueryComplete$Query$OrderRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OrderRead?);

class Options$Query$OrderRead extends graphql.QueryOptions<Query$OrderRead> {
  Options$Query$OrderRead({
    String? operationName,
    required Variables$Query$OrderRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderRead? onComplete,
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
                 data == null ? null : _parserFn$Query$OrderRead(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderRead,
         parserFn: _parserFn$Query$OrderRead,
       );

  final OnQueryComplete$Query$OrderRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderRead
    extends graphql.WatchQueryOptions<Query$OrderRead> {
  WatchOptions$Query$OrderRead({
    String? operationName,
    required Variables$Query$OrderRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderRead? typedOptimisticResult,
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
         document: documentNodeQueryOrderRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderRead,
       );
}

class FetchMoreOptions$Query$OrderRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrderRead,
       );
}

extension ClientExtension$Query$OrderRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderRead>> query$OrderRead(
    Options$Query$OrderRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrderRead> watchQuery$OrderRead(
    WatchOptions$Query$OrderRead options,
  ) => this.watchQuery(options);

  void writeQuery$OrderRead({
    required Query$OrderRead data,
    required Variables$Query$OrderRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOrderRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderRead? readQuery$OrderRead({
    required Variables$Query$OrderRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrderRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderRead> useQuery$OrderRead(
  Options$Query$OrderRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderRead> useWatchQuery$OrderRead(
  WatchOptions$Query$OrderRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrderRead$Widget extends graphql_flutter.Query<Query$OrderRead> {
  Query$OrderRead$Widget({
    widgets.Key? key,
    required Options$Query$OrderRead options,
    required graphql_flutter.QueryBuilder<Query$OrderRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrderRead$allTransOrders {
  Query$OrderRead$allTransOrders({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransOrdersConnection',
  });

  factory Query$OrderRead$allTransOrders.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders(
      totalCount: (l$totalCount as int),
      pageInfo: Query$OrderRead$allTransOrders$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OrderRead$allTransOrders$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$OrderRead$allTransOrders$pageInfo pageInfo;

  final List<Query$OrderRead$allTransOrders$nodes?> nodes;

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
    if (other is! Query$OrderRead$allTransOrders ||
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

extension UtilityExtension$Query$OrderRead$allTransOrders
    on Query$OrderRead$allTransOrders {
  CopyWith$Query$OrderRead$allTransOrders<Query$OrderRead$allTransOrders>
  get copyWith => CopyWith$Query$OrderRead$allTransOrders(this, (i) => i);
}

abstract class CopyWith$Query$OrderRead$allTransOrders<TRes> {
  factory CopyWith$Query$OrderRead$allTransOrders(
    Query$OrderRead$allTransOrders instance,
    TRes Function(Query$OrderRead$allTransOrders) then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders;

  factory CopyWith$Query$OrderRead$allTransOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderRead$allTransOrders;

  TRes call({
    int? totalCount,
    Query$OrderRead$allTransOrders$pageInfo? pageInfo,
    List<Query$OrderRead$allTransOrders$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$OrderRead$allTransOrders$nodes?> Function(
      Iterable<
        CopyWith$Query$OrderRead$allTransOrders$nodes<
          Query$OrderRead$allTransOrders$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrderRead$allTransOrders<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders<TRes> {
  _CopyWithImpl$Query$OrderRead$allTransOrders(this._instance, this._then);

  final Query$OrderRead$allTransOrders _instance;

  final TRes Function(Query$OrderRead$allTransOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OrderRead$allTransOrders$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$OrderRead$allTransOrders$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderRead$allTransOrders$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$OrderRead$allTransOrders$nodes?> Function(
      Iterable<
        CopyWith$Query$OrderRead$allTransOrders$nodes<
          Query$OrderRead$allTransOrders$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OrderRead$allTransOrders$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrderRead$allTransOrders<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders<TRes> {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$OrderRead$allTransOrders$pageInfo? pageInfo,
    List<Query$OrderRead$allTransOrders$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$OrderRead$allTransOrders$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$OrderRead$allTransOrders$pageInfo {
  Query$OrderRead$allTransOrders$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderRead$allTransOrders$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$pageInfo(
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
    if (other is! Query$OrderRead$allTransOrders$pageInfo ||
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

extension UtilityExtension$Query$OrderRead$allTransOrders$pageInfo
    on Query$OrderRead$allTransOrders$pageInfo {
  CopyWith$Query$OrderRead$allTransOrders$pageInfo<
    Query$OrderRead$allTransOrders$pageInfo
  >
  get copyWith =>
      CopyWith$Query$OrderRead$allTransOrders$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> {
  factory CopyWith$Query$OrderRead$allTransOrders$pageInfo(
    Query$OrderRead$allTransOrders$pageInfo instance,
    TRes Function(Query$OrderRead$allTransOrders$pageInfo) then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$pageInfo;

  factory CopyWith$Query$OrderRead$allTransOrders$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderRead$allTransOrders$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$pageInfo<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> {
  _CopyWithImpl$Query$OrderRead$allTransOrders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$pageInfo _instance;

  final TRes Function(Query$OrderRead$allTransOrders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$pageInfo(
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

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$pageInfo<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$OrderRead$allTransOrders$nodes {
  Query$OrderRead$allTransOrders$nodes({
    required this.transOrderId,
    required this.orderNumber,
    this.customerOrderNumber,
    this.controlCode1,
    this.controlCode2,
    this.controlCode3,
    this.orderProcessingDate,
    this.deliveryDate,
    this.deadline,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.customerHistoryId,
    this.mstrStakholderId,
    this.historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    this.contactHistoryId,
    this.mstrStakeholderConcatId,
    this.historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    required this.transOrderDetailsByTransOrderId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'TransOrder',
  });

  factory Query$OrderRead$allTransOrders$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderId = json['transOrderId'];
    final l$orderNumber = json['orderNumber'];
    final l$customerOrderNumber = json['customerOrderNumber'];
    final l$controlCode1 = json['controlCode1'];
    final l$controlCode2 = json['controlCode2'];
    final l$controlCode3 = json['controlCode3'];
    final l$orderProcessingDate = json['orderProcessingDate'];
    final l$deliveryDate = json['deliveryDate'];
    final l$deadline = json['deadline'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$customerHistoryId = json['customerHistoryId'];
    final l$mstrStakholderId = json['mstrStakholderId'];
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        json['historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId'];
    final l$contactHistoryId = json['contactHistoryId'];
    final l$mstrStakeholderConcatId = json['mstrStakeholderConcatId'];
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        json['historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId'];
    final l$transOrderDetailsByTransOrderId =
        json['transOrderDetailsByTransOrderId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$nodes(
      transOrderId: (l$transOrderId as String),
      orderNumber: (l$orderNumber as String),
      customerOrderNumber: (l$customerOrderNumber as String?),
      controlCode1: (l$controlCode1 as String?),
      controlCode2: (l$controlCode2 as String?),
      controlCode3: (l$controlCode3 as String?),
      orderProcessingDate: (l$orderProcessingDate as String?),
      deliveryDate: (l$deliveryDate as String?),
      deadline: (l$deadline as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      customerHistoryId: (l$customerHistoryId as String?),
      mstrStakholderId: (l$mstrStakholderId as String?),
      historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId:
          l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId == null
          ? null
          : Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.fromJson(
              (l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
                  as Map<String, dynamic>),
            ),
      contactHistoryId: (l$contactHistoryId as String?),
      mstrStakeholderConcatId: (l$mstrStakeholderConcatId as String?),
      historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId:
          l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ==
              null
          ? null
          : Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.fromJson(
              (l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
                  as Map<String, dynamic>),
            ),
      transOrderDetailsByTransOrderId:
          Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId.fromJson(
            (l$transOrderDetailsByTransOrderId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOrderId;

  final String orderNumber;

  final String? customerOrderNumber;

  final String? controlCode1;

  final String? controlCode2;

  final String? controlCode3;

  final String? orderProcessingDate;

  final String? deliveryDate;

  final String? deadline;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final String? customerHistoryId;

  final String? mstrStakholderId;

  final Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
  historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  final String? contactHistoryId;

  final String? mstrStakeholderConcatId;

  final Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
  historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  final Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId
  transOrderDetailsByTransOrderId;

  final Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$orderNumber = orderNumber;
    _resultData['orderNumber'] = l$orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    _resultData['customerOrderNumber'] = l$customerOrderNumber;
    final l$controlCode1 = controlCode1;
    _resultData['controlCode1'] = l$controlCode1;
    final l$controlCode2 = controlCode2;
    _resultData['controlCode2'] = l$controlCode2;
    final l$controlCode3 = controlCode3;
    _resultData['controlCode3'] = l$controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    _resultData['orderProcessingDate'] = l$orderProcessingDate;
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
    final l$customerHistoryId = customerHistoryId;
    _resultData['customerHistoryId'] = l$customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    _resultData['mstrStakholderId'] = l$mstrStakholderId;
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    _resultData['historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId'] =
        l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
            ?.toJson();
    final l$contactHistoryId = contactHistoryId;
    _resultData['contactHistoryId'] = l$contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    _resultData['mstrStakeholderConcatId'] = l$mstrStakeholderConcatId;
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    _resultData['historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId'] =
        l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
            ?.toJson();
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    _resultData['transOrderDetailsByTransOrderId'] =
        l$transOrderDetailsByTransOrderId.toJson();
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
    final l$transOrderId = transOrderId;
    final l$orderNumber = orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    final l$controlCode1 = controlCode1;
    final l$controlCode2 = controlCode2;
    final l$controlCode3 = controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$customerHistoryId = customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOrderId,
      l$orderNumber,
      l$customerOrderNumber,
      l$controlCode1,
      l$controlCode2,
      l$controlCode3,
      l$orderProcessingDate,
      l$deliveryDate,
      l$deadline,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$customerHistoryId,
      l$mstrStakholderId,
      l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
      l$contactHistoryId,
      l$mstrStakeholderConcatId,
      l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
      l$transOrderDetailsByTransOrderId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderRead$allTransOrders$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$orderNumber = orderNumber;
    final lOther$orderNumber = other.orderNumber;
    if (l$orderNumber != lOther$orderNumber) {
      return false;
    }
    final l$customerOrderNumber = customerOrderNumber;
    final lOther$customerOrderNumber = other.customerOrderNumber;
    if (l$customerOrderNumber != lOther$customerOrderNumber) {
      return false;
    }
    final l$controlCode1 = controlCode1;
    final lOther$controlCode1 = other.controlCode1;
    if (l$controlCode1 != lOther$controlCode1) {
      return false;
    }
    final l$controlCode2 = controlCode2;
    final lOther$controlCode2 = other.controlCode2;
    if (l$controlCode2 != lOther$controlCode2) {
      return false;
    }
    final l$controlCode3 = controlCode3;
    final lOther$controlCode3 = other.controlCode3;
    if (l$controlCode3 != lOther$controlCode3) {
      return false;
    }
    final l$orderProcessingDate = orderProcessingDate;
    final lOther$orderProcessingDate = other.orderProcessingDate;
    if (l$orderProcessingDate != lOther$orderProcessingDate) {
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
    final l$customerHistoryId = customerHistoryId;
    final lOther$customerHistoryId = other.customerHistoryId;
    if (l$customerHistoryId != lOther$customerHistoryId) {
      return false;
    }
    final l$mstrStakholderId = mstrStakholderId;
    final lOther$mstrStakholderId = other.mstrStakholderId;
    if (l$mstrStakholderId != lOther$mstrStakholderId) {
      return false;
    }
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    final lOther$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        other.historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    if (l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId !=
        lOther$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId) {
      return false;
    }
    final l$contactHistoryId = contactHistoryId;
    final lOther$contactHistoryId = other.contactHistoryId;
    if (l$contactHistoryId != lOther$contactHistoryId) {
      return false;
    }
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final lOther$mstrStakeholderConcatId = other.mstrStakeholderConcatId;
    if (l$mstrStakeholderConcatId != lOther$mstrStakeholderConcatId) {
      return false;
    }
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    final lOther$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        other
            .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    if (l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId !=
        lOther$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId) {
      return false;
    }
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final lOther$transOrderDetailsByTransOrderId =
        other.transOrderDetailsByTransOrderId;
    if (l$transOrderDetailsByTransOrderId !=
        lOther$transOrderDetailsByTransOrderId) {
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

extension UtilityExtension$Query$OrderRead$allTransOrders$nodes
    on Query$OrderRead$allTransOrders$nodes {
  CopyWith$Query$OrderRead$allTransOrders$nodes<
    Query$OrderRead$allTransOrders$nodes
  >
  get copyWith => CopyWith$Query$OrderRead$allTransOrders$nodes(this, (i) => i);
}

abstract class CopyWith$Query$OrderRead$allTransOrders$nodes<TRes> {
  factory CopyWith$Query$OrderRead$allTransOrders$nodes(
    Query$OrderRead$allTransOrders$nodes instance,
    TRes Function(Query$OrderRead$allTransOrders$nodes) then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$nodes;

  factory CopyWith$Query$OrderRead$allTransOrders$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes;

  TRes call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? customerHistoryId,
    String? mstrStakholderId,
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
    historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
  CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId;
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$nodes<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders$nodes<TRes> {
  _CopyWithImpl$Query$OrderRead$allTransOrders$nodes(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$nodes _instance;

  final TRes Function(Query$OrderRead$allTransOrders$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderId = _undefined,
    Object? orderNumber = _undefined,
    Object? customerOrderNumber = _undefined,
    Object? controlCode1 = _undefined,
    Object? controlCode2 = _undefined,
    Object? controlCode3 = _undefined,
    Object? orderProcessingDate = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? customerHistoryId = _undefined,
    Object? mstrStakholderId = _undefined,
    Object? historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderConcatId = _undefined,
    Object?
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        _undefined,
    Object? transOrderDetailsByTransOrderId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$nodes(
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      orderNumber: orderNumber == _undefined || orderNumber == null
          ? _instance.orderNumber
          : (orderNumber as String),
      customerOrderNumber: customerOrderNumber == _undefined
          ? _instance.customerOrderNumber
          : (customerOrderNumber as String?),
      controlCode1: controlCode1 == _undefined
          ? _instance.controlCode1
          : (controlCode1 as String?),
      controlCode2: controlCode2 == _undefined
          ? _instance.controlCode2
          : (controlCode2 as String?),
      controlCode3: controlCode3 == _undefined
          ? _instance.controlCode3
          : (controlCode3 as String?),
      orderProcessingDate: orderProcessingDate == _undefined
          ? _instance.orderProcessingDate
          : (orderProcessingDate as String?),
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
      customerHistoryId: customerHistoryId == _undefined
          ? _instance.customerHistoryId
          : (customerHistoryId as String?),
      mstrStakholderId: mstrStakholderId == _undefined
          ? _instance.mstrStakholderId
          : (mstrStakholderId as String?),
      historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId:
          historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId ==
              _undefined
          ? _instance
                .historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
          : (historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
                as Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?),
      contactHistoryId: contactHistoryId == _undefined
          ? _instance.contactHistoryId
          : (contactHistoryId as String?),
      mstrStakeholderConcatId: mstrStakeholderConcatId == _undefined
          ? _instance.mstrStakeholderConcatId
          : (mstrStakeholderConcatId as String?),
      historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId:
          historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ==
              _undefined
          ? _instance
                .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
          : (historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
                as Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?),
      transOrderDetailsByTransOrderId:
          transOrderDetailsByTransOrderId == _undefined ||
              transOrderDetailsByTransOrderId == null
          ? _instance.transOrderDetailsByTransOrderId
          : (transOrderDetailsByTransOrderId
                as Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
    final local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        _instance.historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    return local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId ==
            null
        ? CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
            local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
            (e) => call(
              historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId: e,
            ),
          );
  }

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
    final local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        _instance
            .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    return local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ==
            null
        ? CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
            local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
            (e) => call(
              historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId:
                  e,
            ),
          );
  }

  CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId {
    final local$transOrderDetailsByTransOrderId =
        _instance.transOrderDetailsByTransOrderId;
    return CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
      local$transOrderDetailsByTransOrderId,
      (e) => call(transOrderDetailsByTransOrderId: e),
    );
  }

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes<TRes>
    implements CopyWith$Query$OrderRead$allTransOrders$nodes<TRes> {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes(this._res);

  TRes _res;

  call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? customerHistoryId,
    String? mstrStakholderId,
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
    historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
        _res,
      );

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
        _res,
      );

  CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId.stub(
        _res,
      );

  CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
  Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId({
    required this.historyId,
    required this.code,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryMstrStakeholder',
  });

  factory Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$code = json['code'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
      historyId: (l$historyId as String),
      code: (l$code as String),
      sharedAppellationsId: (l$sharedAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String code;

  final String sharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$code = code;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$code,
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
            is! Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId ||
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

extension UtilityExtension$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
    on
        Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
  >
  get copyWith =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
> {
  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
    instance,
    TRes Function(
      Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  TRes call({
    String? historyId,
    String? code,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
          TRes
        > {
  _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
  _instance;

  final TRes Function(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
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

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? code,
    String? sharedAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
  Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId({
    required this.historyId,
    required this.code,
    this.officeAppellationsId,
    this.departmentAppellationsId,
    required this.contactPersonAppellationsId,
    this.$__typename = 'HistoryMstrStakeholderContact',
  });

  factory Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$code = json['code'];
    final l$officeAppellationsId = json['officeAppellationsId'];
    final l$departmentAppellationsId = json['departmentAppellationsId'];
    final l$contactPersonAppellationsId = json['contactPersonAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
      historyId: (l$historyId as String),
      code: (l$code as String),
      officeAppellationsId: (l$officeAppellationsId as String?),
      departmentAppellationsId: (l$departmentAppellationsId as String?),
      contactPersonAppellationsId: (l$contactPersonAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String code;

  final String? officeAppellationsId;

  final String? departmentAppellationsId;

  final String contactPersonAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$officeAppellationsId = officeAppellationsId;
    _resultData['officeAppellationsId'] = l$officeAppellationsId;
    final l$departmentAppellationsId = departmentAppellationsId;
    _resultData['departmentAppellationsId'] = l$departmentAppellationsId;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    _resultData['contactPersonAppellationsId'] = l$contactPersonAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$code = code;
    final l$officeAppellationsId = officeAppellationsId;
    final l$departmentAppellationsId = departmentAppellationsId;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$code,
      l$officeAppellationsId,
      l$departmentAppellationsId,
      l$contactPersonAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ||
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
    final l$officeAppellationsId = officeAppellationsId;
    final lOther$officeAppellationsId = other.officeAppellationsId;
    if (l$officeAppellationsId != lOther$officeAppellationsId) {
      return false;
    }
    final l$departmentAppellationsId = departmentAppellationsId;
    final lOther$departmentAppellationsId = other.departmentAppellationsId;
    if (l$departmentAppellationsId != lOther$departmentAppellationsId) {
      return false;
    }
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final lOther$contactPersonAppellationsId =
        other.contactPersonAppellationsId;
    if (l$contactPersonAppellationsId != lOther$contactPersonAppellationsId) {
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

extension UtilityExtension$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
    on
        Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
  >
  get copyWith =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
> {
  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
    instance,
    TRes Function(
      Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  TRes call({
    String? historyId,
    String? code,
    String? officeAppellationsId,
    String? departmentAppellationsId,
    String? contactPersonAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
          TRes
        > {
  _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
  _instance;

  final TRes Function(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? code = _undefined,
    Object? officeAppellationsId = _undefined,
    Object? departmentAppellationsId = _undefined,
    Object? contactPersonAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      officeAppellationsId: officeAppellationsId == _undefined
          ? _instance.officeAppellationsId
          : (officeAppellationsId as String?),
      departmentAppellationsId: departmentAppellationsId == _undefined
          ? _instance.departmentAppellationsId
          : (departmentAppellationsId as String?),
      contactPersonAppellationsId:
          contactPersonAppellationsId == _undefined ||
              contactPersonAppellationsId == null
          ? _instance.contactPersonAppellationsId
          : (contactPersonAppellationsId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? code,
    String? officeAppellationsId,
    String? departmentAppellationsId,
    String? contactPersonAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId {
  Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId({
    required this.totalCount,
    this.$__typename = 'TransOrderDetailsConnection',
  });

  factory Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
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
            is! Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId ||
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

extension UtilityExtension$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId
    on Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId {
  CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId
  >
  get copyWith =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
  TRes
> {
  factory CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId
    instance,
    TRes Function(
      Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId;

  factory CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId
  _instance;

  final TRes Function(
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$transOrderDetailsByTransOrderId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderRead$allTransOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$OrderReadAppellation {
  factory Variables$Query$OrderReadAppellation({
    required String sharedAppellationsId,
    required bool ja,
    required bool en,
  }) => Variables$Query$OrderReadAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$OrderReadAppellation._(this._$data);

  factory Variables$Query$OrderReadAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$OrderReadAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$OrderReadAppellation<
    Variables$Query$OrderReadAppellation
  >
  get copyWith => CopyWith$Variables$Query$OrderReadAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderReadAppellation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
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
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$ja = ja;
    final l$en = en;
    return Object.hashAll([l$sharedAppellationsId, l$ja, l$en]);
  }
}

abstract class CopyWith$Variables$Query$OrderReadAppellation<TRes> {
  factory CopyWith$Variables$Query$OrderReadAppellation(
    Variables$Query$OrderReadAppellation instance,
    TRes Function(Variables$Query$OrderReadAppellation) then,
  ) = _CopyWithImpl$Variables$Query$OrderReadAppellation;

  factory CopyWith$Variables$Query$OrderReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderReadAppellation;

  TRes call({String? sharedAppellationsId, bool? ja, bool? en});
}

class _CopyWithImpl$Variables$Query$OrderReadAppellation<TRes>
    implements CopyWith$Variables$Query$OrderReadAppellation<TRes> {
  _CopyWithImpl$Variables$Query$OrderReadAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderReadAppellation _instance;

  final TRes Function(Variables$Query$OrderReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$OrderReadAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderReadAppellation<TRes>
    implements CopyWith$Variables$Query$OrderReadAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderReadAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId, bool? ja, bool? en}) => _res;
}

class Query$OrderReadAppellation {
  Query$OrderReadAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$OrderReadAppellation.fromJson(Map<String, dynamic> json) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrderReadAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$OrderReadAppellation ||
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

extension UtilityExtension$Query$OrderReadAppellation
    on Query$OrderReadAppellation {
  CopyWith$Query$OrderReadAppellation<Query$OrderReadAppellation>
  get copyWith => CopyWith$Query$OrderReadAppellation(this, (i) => i);
}

abstract class CopyWith$Query$OrderReadAppellation<TRes> {
  factory CopyWith$Query$OrderReadAppellation(
    Query$OrderReadAppellation instance,
    TRes Function(Query$OrderReadAppellation) then,
  ) = _CopyWithImpl$Query$OrderReadAppellation;

  factory CopyWith$Query$OrderReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderReadAppellation;

  TRes call({
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrderReadAppellation<TRes>
    implements CopyWith$Query$OrderReadAppellation<TRes> {
  _CopyWithImpl$Query$OrderReadAppellation(this._instance, this._then);

  final Query$OrderReadAppellation _instance;

  final TRes Function(Query$OrderReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderReadAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderReadAppellation<TRes>
    implements CopyWith$Query$OrderReadAppellation<TRes> {
  _CopyWithStubImpl$Query$OrderReadAppellation(this._res);

  TRes _res;

  call({
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryOrderReadAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderReadAppellation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedAppellationsId')),
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
  ],
);
Query$OrderReadAppellation _parserFn$Query$OrderReadAppellation(
  Map<String, dynamic> data,
) => Query$OrderReadAppellation.fromJson(data);
typedef OnQueryComplete$Query$OrderReadAppellation =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OrderReadAppellation?);

class Options$Query$OrderReadAppellation
    extends graphql.QueryOptions<Query$OrderReadAppellation> {
  Options$Query$OrderReadAppellation({
    String? operationName,
    required Variables$Query$OrderReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderReadAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderReadAppellation? onComplete,
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
                     : _parserFn$Query$OrderReadAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderReadAppellation,
         parserFn: _parserFn$Query$OrderReadAppellation,
       );

  final OnQueryComplete$Query$OrderReadAppellation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderReadAppellation
    extends graphql.WatchQueryOptions<Query$OrderReadAppellation> {
  WatchOptions$Query$OrderReadAppellation({
    String? operationName,
    required Variables$Query$OrderReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderReadAppellation? typedOptimisticResult,
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
         document: documentNodeQueryOrderReadAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderReadAppellation,
       );
}

class FetchMoreOptions$Query$OrderReadAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderReadAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderReadAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrderReadAppellation,
       );
}

extension ClientExtension$Query$OrderReadAppellation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderReadAppellation>>
  query$OrderReadAppellation(
    Options$Query$OrderReadAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrderReadAppellation>
  watchQuery$OrderReadAppellation(
    WatchOptions$Query$OrderReadAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$OrderReadAppellation({
    required Query$OrderReadAppellation data,
    required Variables$Query$OrderReadAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOrderReadAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderReadAppellation? readQuery$OrderReadAppellation({
    required Variables$Query$OrderReadAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrderReadAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderReadAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderReadAppellation>
useQuery$OrderReadAppellation(Options$Query$OrderReadAppellation options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderReadAppellation>
useWatchQuery$OrderReadAppellation(
  WatchOptions$Query$OrderReadAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrderReadAppellation$Widget
    extends graphql_flutter.Query<Query$OrderReadAppellation> {
  Query$OrderReadAppellation$Widget({
    widgets.Key? key,
    required Options$Query$OrderReadAppellation options,
    required graphql_flutter.QueryBuilder<Query$OrderReadAppellation> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId {
  Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId
    on Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId instance,
    TRes Function(
      Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId,
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
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
