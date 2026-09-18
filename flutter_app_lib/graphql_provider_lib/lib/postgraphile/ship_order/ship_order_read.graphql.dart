import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ShipOrderRead {
  factory Variables$Query$ShipOrderRead({
    required int first,
    int? offset,
    Input$TransShipOrderCondition? condition,
    List<Enum$TransShipOrdersOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$ShipOrderRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$ShipOrderRead._(this._$data);

  factory Variables$Query$ShipOrderRead.fromJson(Map<String, dynamic> data) {
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
          : Input$TransShipOrderCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransShipOrdersOrderBy((e as String)))
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
    return Variables$Query$ShipOrderRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransShipOrderCondition? get condition =>
      (_$data['condition'] as Input$TransShipOrderCondition?);

  List<Enum$TransShipOrdersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransShipOrdersOrderBy>?);

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
          ?.map((e) => toJson$Enum$TransShipOrdersOrderBy(e))
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

  CopyWith$Variables$Query$ShipOrderRead<Variables$Query$ShipOrderRead>
  get copyWith => CopyWith$Variables$Query$ShipOrderRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShipOrderRead ||
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

abstract class CopyWith$Variables$Query$ShipOrderRead<TRes> {
  factory CopyWith$Variables$Query$ShipOrderRead(
    Variables$Query$ShipOrderRead instance,
    TRes Function(Variables$Query$ShipOrderRead) then,
  ) = _CopyWithImpl$Variables$Query$ShipOrderRead;

  factory CopyWith$Variables$Query$ShipOrderRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ShipOrderRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransShipOrderCondition? condition,
    List<Enum$TransShipOrdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$ShipOrderRead<TRes>
    implements CopyWith$Variables$Query$ShipOrderRead<TRes> {
  _CopyWithImpl$Variables$Query$ShipOrderRead(this._instance, this._then);

  final Variables$Query$ShipOrderRead _instance;

  final TRes Function(Variables$Query$ShipOrderRead) _then;

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
    Variables$Query$ShipOrderRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$TransShipOrderCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransShipOrdersOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShipOrderRead<TRes>
    implements CopyWith$Variables$Query$ShipOrderRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ShipOrderRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransShipOrderCondition? condition,
    List<Enum$TransShipOrdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$ShipOrderRead {
  Query$ShipOrderRead({this.allTransShipOrders, this.$__typename = 'Query'});

  factory Query$ShipOrderRead.fromJson(Map<String, dynamic> json) {
    final l$allTransShipOrders = json['allTransShipOrders'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead(
      allTransShipOrders: l$allTransShipOrders == null
          ? null
          : Query$ShipOrderRead$allTransShipOrders.fromJson(
              (l$allTransShipOrders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShipOrderRead$allTransShipOrders? allTransShipOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransShipOrders = allTransShipOrders;
    _resultData['allTransShipOrders'] = l$allTransShipOrders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransShipOrders = allTransShipOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransShipOrders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShipOrderRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransShipOrders = allTransShipOrders;
    final lOther$allTransShipOrders = other.allTransShipOrders;
    if (l$allTransShipOrders != lOther$allTransShipOrders) {
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

extension UtilityExtension$Query$ShipOrderRead on Query$ShipOrderRead {
  CopyWith$Query$ShipOrderRead<Query$ShipOrderRead> get copyWith =>
      CopyWith$Query$ShipOrderRead(this, (i) => i);
}

abstract class CopyWith$Query$ShipOrderRead<TRes> {
  factory CopyWith$Query$ShipOrderRead(
    Query$ShipOrderRead instance,
    TRes Function(Query$ShipOrderRead) then,
  ) = _CopyWithImpl$Query$ShipOrderRead;

  factory CopyWith$Query$ShipOrderRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ShipOrderRead;

  TRes call({
    Query$ShipOrderRead$allTransShipOrders? allTransShipOrders,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes> get allTransShipOrders;
}

class _CopyWithImpl$Query$ShipOrderRead<TRes>
    implements CopyWith$Query$ShipOrderRead<TRes> {
  _CopyWithImpl$Query$ShipOrderRead(this._instance, this._then);

  final Query$ShipOrderRead _instance;

  final TRes Function(Query$ShipOrderRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransShipOrders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead(
      allTransShipOrders: allTransShipOrders == _undefined
          ? _instance.allTransShipOrders
          : (allTransShipOrders as Query$ShipOrderRead$allTransShipOrders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes> get allTransShipOrders {
    final local$allTransShipOrders = _instance.allTransShipOrders;
    return local$allTransShipOrders == null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders.stub(_then(_instance))
        : CopyWith$Query$ShipOrderRead$allTransShipOrders(
            local$allTransShipOrders,
            (e) => call(allTransShipOrders: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShipOrderRead<TRes>
    implements CopyWith$Query$ShipOrderRead<TRes> {
  _CopyWithStubImpl$Query$ShipOrderRead(this._res);

  TRes _res;

  call({
    Query$ShipOrderRead$allTransShipOrders? allTransShipOrders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes>
  get allTransShipOrders =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders.stub(_res);
}

const documentNodeQueryShipOrderRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShipOrderRead'),
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
            name: NameNode(value: 'TransShipOrderCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransShipOrdersOrderBy'),
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
            name: NameNode(value: 'allTransShipOrders'),
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
                        name: NameNode(value: 'transShippingId'),
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
                        name: NameNode(value: 'edtimatedShippingDate'),
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
                        name: NameNode(value: 'estimatedArrivalDate'),
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
                        name: NameNode(value: 'transOrderByTransOrderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                                    name: NameNode(value: 'code'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
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
                                    name: NameNode(value: 'code'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'officeAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'departmentAppellationsId',
                                    ),
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
                        name: NameNode(value: 'historyMstrStakeholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId',
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
                        name: NameNode(
                          value: 'transShippingOrderDetailsByTransShippingId',
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
Query$ShipOrderRead _parserFn$Query$ShipOrderRead(Map<String, dynamic> data) =>
    Query$ShipOrderRead.fromJson(data);
typedef OnQueryComplete$Query$ShipOrderRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ShipOrderRead?);

class Options$Query$ShipOrderRead
    extends graphql.QueryOptions<Query$ShipOrderRead> {
  Options$Query$ShipOrderRead({
    String? operationName,
    required Variables$Query$ShipOrderRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShipOrderRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShipOrderRead? onComplete,
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
                 data == null ? null : _parserFn$Query$ShipOrderRead(data),
               ),
         onError: onError,
         document: documentNodeQueryShipOrderRead,
         parserFn: _parserFn$Query$ShipOrderRead,
       );

  final OnQueryComplete$Query$ShipOrderRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShipOrderRead
    extends graphql.WatchQueryOptions<Query$ShipOrderRead> {
  WatchOptions$Query$ShipOrderRead({
    String? operationName,
    required Variables$Query$ShipOrderRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShipOrderRead? typedOptimisticResult,
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
         document: documentNodeQueryShipOrderRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShipOrderRead,
       );
}

class FetchMoreOptions$Query$ShipOrderRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShipOrderRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShipOrderRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShipOrderRead,
       );
}

extension ClientExtension$Query$ShipOrderRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShipOrderRead>> query$ShipOrderRead(
    Options$Query$ShipOrderRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShipOrderRead> watchQuery$ShipOrderRead(
    WatchOptions$Query$ShipOrderRead options,
  ) => this.watchQuery(options);

  void writeQuery$ShipOrderRead({
    required Query$ShipOrderRead data,
    required Variables$Query$ShipOrderRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryShipOrderRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShipOrderRead? readQuery$ShipOrderRead({
    required Variables$Query$ShipOrderRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryShipOrderRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ShipOrderRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShipOrderRead> useQuery$ShipOrderRead(
  Options$Query$ShipOrderRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShipOrderRead> useWatchQuery$ShipOrderRead(
  WatchOptions$Query$ShipOrderRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShipOrderRead$Widget
    extends graphql_flutter.Query<Query$ShipOrderRead> {
  Query$ShipOrderRead$Widget({
    widgets.Key? key,
    required Options$Query$ShipOrderRead options,
    required graphql_flutter.QueryBuilder<Query$ShipOrderRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShipOrderRead$allTransShipOrders {
  Query$ShipOrderRead$allTransShipOrders({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransShipOrdersConnection',
  });

  factory Query$ShipOrderRead$allTransShipOrders.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders(
      totalCount: (l$totalCount as int),
      pageInfo: Query$ShipOrderRead$allTransShipOrders$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ShipOrderRead$allTransShipOrders$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ShipOrderRead$allTransShipOrders$pageInfo pageInfo;

  final List<Query$ShipOrderRead$allTransShipOrders$nodes?> nodes;

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
    if (other is! Query$ShipOrderRead$allTransShipOrders ||
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders
    on Query$ShipOrderRead$allTransShipOrders {
  CopyWith$Query$ShipOrderRead$allTransShipOrders<
    Query$ShipOrderRead$allTransShipOrders
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders(this, (i) => i);
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders(
    Query$ShipOrderRead$allTransShipOrders instance,
    TRes Function(Query$ShipOrderRead$allTransShipOrders) then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders;

  TRes call({
    int? totalCount,
    Query$ShipOrderRead$allTransShipOrders$pageInfo? pageInfo,
    List<Query$ShipOrderRead$allTransShipOrders$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$ShipOrderRead$allTransShipOrders$nodes?> Function(
      Iterable<
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<
          Query$ShipOrderRead$allTransShipOrders$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes> {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders _instance;

  final TRes Function(Query$ShipOrderRead$allTransShipOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$ShipOrderRead$allTransShipOrders$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$ShipOrderRead$allTransShipOrders$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ShipOrderRead$allTransShipOrders$nodes?> Function(
      Iterable<
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<
          Query$ShipOrderRead$allTransShipOrders$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders<TRes> {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$ShipOrderRead$allTransShipOrders$pageInfo? pageInfo,
    List<Query$ShipOrderRead$allTransShipOrders$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$pageInfo {
  Query$ShipOrderRead$allTransShipOrders$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ShipOrderRead$allTransShipOrders$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$pageInfo(
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
    if (other is! Query$ShipOrderRead$allTransShipOrders$pageInfo ||
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$pageInfo
    on Query$ShipOrderRead$allTransShipOrders$pageInfo {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<
    Query$ShipOrderRead$allTransShipOrders$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo(
    Query$ShipOrderRead$allTransShipOrders$pageInfo instance,
    TRes Function(Query$ShipOrderRead$allTransShipOrders$pageInfo) then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$pageInfo _instance;

  final TRes Function(Query$ShipOrderRead$allTransShipOrders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$pageInfo(
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

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes {
  Query$ShipOrderRead$allTransShipOrders$nodes({
    required this.transShippingId,
    required this.transOrderId,
    required this.edtimatedShippingDate,
    required this.code,
    required this.estimatedArrivalDate,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.transOrderByTransOrderId,
    this.historyMstrStakeholderId,
    this.mstrStakeholderId,
    this.historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
    required this.transShippingOrderDetailsByTransShippingId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'TransShipOrder',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingId = json['transShippingId'];
    final l$transOrderId = json['transOrderId'];
    final l$edtimatedShippingDate = json['edtimatedShippingDate'];
    final l$code = json['code'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$transOrderByTransOrderId = json['transOrderByTransOrderId'];
    final l$historyMstrStakeholderId = json['historyMstrStakeholderId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        json['historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId'];
    final l$transShippingOrderDetailsByTransShippingId =
        json['transShippingOrderDetailsByTransShippingId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes(
      transShippingId: (l$transShippingId as String),
      transOrderId: (l$transOrderId as String),
      edtimatedShippingDate: (l$edtimatedShippingDate as String),
      code: (l$code as String),
      estimatedArrivalDate: (l$estimatedArrivalDate as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      transOrderByTransOrderId: l$transOrderByTransOrderId == null
          ? null
          : Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId.fromJson(
              (l$transOrderByTransOrderId as Map<String, dynamic>),
            ),
      historyMstrStakeholderId: (l$historyMstrStakeholderId as String?),
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId:
          l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId ==
              null
          ? null
          : Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId.fromJson(
              (l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
                  as Map<String, dynamic>),
            ),
      transShippingOrderDetailsByTransShippingId:
          Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId.fromJson(
            (l$transShippingOrderDetailsByTransShippingId
                as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingId;

  final String transOrderId;

  final String edtimatedShippingDate;

  final String code;

  final String estimatedArrivalDate;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId?
  transOrderByTransOrderId;

  final String? historyMstrStakeholderId;

  final String? mstrStakeholderId;

  final Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId?
  historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;

  final Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId
  transShippingOrderDetailsByTransShippingId;

  final Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingId = transShippingId;
    _resultData['transShippingId'] = l$transShippingId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$edtimatedShippingDate = edtimatedShippingDate;
    _resultData['edtimatedShippingDate'] = l$edtimatedShippingDate;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$transOrderByTransOrderId = transOrderByTransOrderId;
    _resultData['transOrderByTransOrderId'] = l$transOrderByTransOrderId
        ?.toJson();
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    _resultData['historyMstrStakeholderId'] = l$historyMstrStakeholderId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
    _resultData['historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId'] =
        l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
            ?.toJson();
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    _resultData['transShippingOrderDetailsByTransShippingId'] =
        l$transShippingOrderDetailsByTransShippingId.toJson();
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
    final l$transShippingId = transShippingId;
    final l$transOrderId = transOrderId;
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$transOrderByTransOrderId = transOrderByTransOrderId;
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingId,
      l$transOrderId,
      l$edtimatedShippingDate,
      l$code,
      l$estimatedArrivalDate,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$transOrderByTransOrderId,
      l$historyMstrStakeholderId,
      l$mstrStakeholderId,
      l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
      l$transShippingOrderDetailsByTransShippingId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShipOrderRead$allTransShipOrders$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingId = transShippingId;
    final lOther$transShippingId = other.transShippingId;
    if (l$transShippingId != lOther$transShippingId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final lOther$edtimatedShippingDate = other.edtimatedShippingDate;
    if (l$edtimatedShippingDate != lOther$edtimatedShippingDate) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
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
    final l$transOrderByTransOrderId = transOrderByTransOrderId;
    final lOther$transOrderByTransOrderId = other.transOrderByTransOrderId;
    if (l$transOrderByTransOrderId != lOther$transOrderByTransOrderId) {
      return false;
    }
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final lOther$historyMstrStakeholderId = other.historyMstrStakeholderId;
    if (l$historyMstrStakeholderId != lOther$historyMstrStakeholderId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
    final lOther$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        other
            .historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
    if (l$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId !=
        lOther$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId) {
      return false;
    }
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    final lOther$transShippingOrderDetailsByTransShippingId =
        other.transShippingOrderDetailsByTransShippingId;
    if (l$transShippingOrderDetailsByTransShippingId !=
        lOther$transShippingOrderDetailsByTransShippingId) {
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes
    on Query$ShipOrderRead$allTransShipOrders$nodes {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<
    Query$ShipOrderRead$allTransShipOrders$nodes
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes(this, (i) => i);
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<TRes> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes(
    Query$ShipOrderRead$allTransShipOrders$nodes instance,
    TRes Function(Query$ShipOrderRead$allTransShipOrders$nodes) then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes;

  TRes call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId?
    transOrderByTransOrderId,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId?
    historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId?
    transShippingOrderDetailsByTransShippingId,
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
    TRes
  >
  get transOrderByTransOrderId;
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId;
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<TRes> {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes _instance;

  final TRes Function(Query$ShipOrderRead$allTransShipOrders$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingId = _undefined,
    Object? transOrderId = _undefined,
    Object? edtimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? transOrderByTransOrderId = _undefined,
    Object? historyMstrStakeholderId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object?
        historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        _undefined,
    Object? transShippingOrderDetailsByTransShippingId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes(
      transShippingId: transShippingId == _undefined || transShippingId == null
          ? _instance.transShippingId
          : (transShippingId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      edtimatedShippingDate:
          edtimatedShippingDate == _undefined || edtimatedShippingDate == null
          ? _instance.edtimatedShippingDate
          : (edtimatedShippingDate as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      estimatedArrivalDate:
          estimatedArrivalDate == _undefined || estimatedArrivalDate == null
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      transOrderByTransOrderId: transOrderByTransOrderId == _undefined
          ? _instance.transOrderByTransOrderId
          : (transOrderByTransOrderId
                as Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId?),
      historyMstrStakeholderId: historyMstrStakeholderId == _undefined
          ? _instance.historyMstrStakeholderId
          : (historyMstrStakeholderId as String?),
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId:
          historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId ==
              _undefined
          ? _instance
                .historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
          : (historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
                as Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId?),
      transShippingOrderDetailsByTransShippingId:
          transShippingOrderDetailsByTransShippingId == _undefined ||
              transShippingOrderDetailsByTransShippingId == null
          ? _instance.transShippingOrderDetailsByTransShippingId
          : (transShippingOrderDetailsByTransShippingId
                as Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
    TRes
  >
  get transOrderByTransOrderId {
    final local$transOrderByTransOrderId = _instance.transOrderByTransOrderId;
    return local$transOrderByTransOrderId == null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
            local$transOrderByTransOrderId,
            (e) => call(transOrderByTransOrderId: e),
          );
  }

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId {
    final local$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =
        _instance
            .historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;
    return local$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId ==
            null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
            local$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
            (e) => call(
              historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId:
                  e,
            ),
          );
  }

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId {
    final local$transShippingOrderDetailsByTransShippingId =
        _instance.transShippingOrderDetailsByTransShippingId;
    return CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
      local$transShippingOrderDetailsByTransShippingId,
      (e) => call(transShippingOrderDetailsByTransShippingId: e),
    );
  }

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes<TRes>
    implements CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes<TRes> {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes(this._res);

  TRes _res;

  call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId?
    transOrderByTransOrderId,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId?
    historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId?
    transShippingOrderDetailsByTransShippingId,
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
    TRes
  >
  get transOrderByTransOrderId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId {
  Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId({
    required this.orderNumber,
    this.customerOrderNumber,
    this.customerHistoryId,
    this.mstrStakholderId,
    this.historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    this.contactHistoryId,
    this.mstrStakeholderConcatId,
    this.historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    this.controlCode1,
    this.controlCode2,
    this.controlCode3,
    this.orderProcessingDate,
    this.deliveryDate,
    this.deadline,
    required this.transOrderDetailsByTransOrderId,
    this.$__typename = 'TransOrder',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$orderNumber = json['orderNumber'];
    final l$customerOrderNumber = json['customerOrderNumber'];
    final l$customerHistoryId = json['customerHistoryId'];
    final l$mstrStakholderId = json['mstrStakholderId'];
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        json['historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId'];
    final l$contactHistoryId = json['contactHistoryId'];
    final l$mstrStakeholderConcatId = json['mstrStakeholderConcatId'];
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        json['historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId'];
    final l$controlCode1 = json['controlCode1'];
    final l$controlCode2 = json['controlCode2'];
    final l$controlCode3 = json['controlCode3'];
    final l$orderProcessingDate = json['orderProcessingDate'];
    final l$deliveryDate = json['deliveryDate'];
    final l$deadline = json['deadline'];
    final l$transOrderDetailsByTransOrderId =
        json['transOrderDetailsByTransOrderId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
      orderNumber: (l$orderNumber as String),
      customerOrderNumber: (l$customerOrderNumber as String?),
      customerHistoryId: (l$customerHistoryId as String?),
      mstrStakholderId: (l$mstrStakholderId as String?),
      historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId:
          l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId == null
          ? null
          : Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.fromJson(
              (l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
                  as Map<String, dynamic>),
            ),
      contactHistoryId: (l$contactHistoryId as String?),
      mstrStakeholderConcatId: (l$mstrStakeholderConcatId as String?),
      historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId:
          l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ==
              null
          ? null
          : Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.fromJson(
              (l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
                  as Map<String, dynamic>),
            ),
      controlCode1: (l$controlCode1 as String?),
      controlCode2: (l$controlCode2 as String?),
      controlCode3: (l$controlCode3 as String?),
      orderProcessingDate: (l$orderProcessingDate as String?),
      deliveryDate: (l$deliveryDate as String?),
      deadline: (l$deadline as String?),
      transOrderDetailsByTransOrderId:
          Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId.fromJson(
            (l$transOrderDetailsByTransOrderId as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String orderNumber;

  final String? customerOrderNumber;

  final String? customerHistoryId;

  final String? mstrStakholderId;

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
  historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  final String? contactHistoryId;

  final String? mstrStakeholderConcatId;

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
  historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  final String? controlCode1;

  final String? controlCode2;

  final String? controlCode3;

  final String? orderProcessingDate;

  final String? deliveryDate;

  final String? deadline;

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId
  transOrderDetailsByTransOrderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderNumber = orderNumber;
    _resultData['orderNumber'] = l$orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    _resultData['customerOrderNumber'] = l$customerOrderNumber;
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
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    _resultData['transOrderDetailsByTransOrderId'] =
        l$transOrderDetailsByTransOrderId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderNumber = orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    final l$customerHistoryId = customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    final l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    final l$controlCode1 = controlCode1;
    final l$controlCode2 = controlCode2;
    final l$controlCode3 = controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderNumber,
      l$customerOrderNumber,
      l$customerHistoryId,
      l$mstrStakholderId,
      l$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
      l$contactHistoryId,
      l$mstrStakeholderConcatId,
      l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
      l$controlCode1,
      l$controlCode2,
      l$controlCode3,
      l$orderProcessingDate,
      l$deliveryDate,
      l$deadline,
      l$transOrderDetailsByTransOrderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId ||
        runtimeType != other.runtimeType) {
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
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final lOther$transOrderDetailsByTransOrderId =
        other.transOrderDetailsByTransOrderId;
    if (l$transOrderDetailsByTransOrderId !=
        lOther$transOrderDetailsByTransOrderId) {
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId
    on Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId;

  TRes call({
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
    historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId;
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderNumber = _undefined,
    Object? customerOrderNumber = _undefined,
    Object? customerHistoryId = _undefined,
    Object? mstrStakholderId = _undefined,
    Object? historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderConcatId = _undefined,
    Object?
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        _undefined,
    Object? controlCode1 = _undefined,
    Object? controlCode2 = _undefined,
    Object? controlCode3 = _undefined,
    Object? orderProcessingDate = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? transOrderDetailsByTransOrderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
      orderNumber: orderNumber == _undefined || orderNumber == null
          ? _instance.orderNumber
          : (orderNumber as String),
      customerOrderNumber: customerOrderNumber == _undefined
          ? _instance.customerOrderNumber
          : (customerOrderNumber as String?),
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
                as Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?),
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
                as Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?),
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
      transOrderDetailsByTransOrderId:
          transOrderDetailsByTransOrderId == _undefined ||
              transOrderDetailsByTransOrderId == null
          ? _instance.transOrderDetailsByTransOrderId
          : (transOrderDetailsByTransOrderId
                as Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
    final local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =
        _instance.historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;
    return local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId ==
            null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
            local$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
            (e) => call(
              historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId: e,
            ),
          );
  }

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
    final local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =
        _instance
            .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;
    return local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ==
            null
        ? CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
            local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
            (e) => call(
              historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId:
                  e,
            ),
          );
  }

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId {
    final local$transOrderDetailsByTransOrderId =
        _instance.transOrderDetailsByTransOrderId;
    return CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
      local$transOrderDetailsByTransOrderId,
      (e) => call(transOrderDetailsByTransOrderId: e),
    );
  }
}

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId(
    this._res,
  );

  TRes _res;

  call({
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId?
    historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    TRes
  >
  get historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId.stub(
        _res,
      );
}

class Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
  Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId({
    required this.code,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryMstrStakeholder',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
      code: (l$code as String),
      sharedAppellationsId: (l$sharedAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String sharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$code = code;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$sharedAppellationsId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId;

  TRes call({String? code, String? sharedAppellationsId, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
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

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId(
    this._res,
  );

  TRes _res;

  call({String? code, String? sharedAppellationsId, String? $__typename}) =>
      _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
  Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId({
    required this.code,
    this.officeAppellationsId,
    this.departmentAppellationsId,
    required this.contactPersonAppellationsId,
    this.$__typename = 'HistoryMstrStakeholderContact',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$officeAppellationsId = json['officeAppellationsId'];
    final l$departmentAppellationsId = json['departmentAppellationsId'];
    final l$contactPersonAppellationsId = json['contactPersonAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
      code: (l$code as String),
      officeAppellationsId: (l$officeAppellationsId as String?),
      departmentAppellationsId: (l$departmentAppellationsId as String?),
      contactPersonAppellationsId: (l$contactPersonAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? officeAppellationsId;

  final String? departmentAppellationsId;

  final String contactPersonAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$code = code;
    final l$officeAppellationsId = officeAppellationsId;
    final l$departmentAppellationsId = departmentAppellationsId;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId;

  TRes call({
    String? code,
    String? officeAppellationsId,
    String? departmentAppellationsId,
    String? contactPersonAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? officeAppellationsId = _undefined,
    Object? departmentAppellationsId = _undefined,
    Object? contactPersonAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
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

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderConcatId(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? officeAppellationsId,
    String? departmentAppellationsId,
    String? contactPersonAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId {
  Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId({
    required this.totalCount,
    this.$__typename = 'TransOrderDetailsConnection',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
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
            is! Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId ||
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transOrderByTransOrderId$transOrderDetailsByTransOrderId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId {
  Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId({
    required this.historyId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryMstrStakeholder',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
      historyId: (l$historyId as String),
      sharedAppellationsId: (l$sharedAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String sharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$historyId, l$sharedAppellationsId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId;

  TRes call({
    String? historyId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
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

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyMstrStakeholderByHistoryMstrStakeholderIdAndMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? sharedAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId {
  Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId({
    required this.totalCount,
    this.$__typename = 'TransShippingOrderDetailsConnection',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
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
            is! Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId ||
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$transShippingOrderDetailsByTransShippingId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderRead$allTransShipOrders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$ShipOrderReadAppellation {
  factory Variables$Query$ShipOrderReadAppellation({
    required String sharedAppellationsId,
    required bool ja,
    required bool en,
  }) => Variables$Query$ShipOrderReadAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$ShipOrderReadAppellation._(this._$data);

  factory Variables$Query$ShipOrderReadAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$ShipOrderReadAppellation._(result$data);
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

  CopyWith$Variables$Query$ShipOrderReadAppellation<
    Variables$Query$ShipOrderReadAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$ShipOrderReadAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShipOrderReadAppellation ||
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

abstract class CopyWith$Variables$Query$ShipOrderReadAppellation<TRes> {
  factory CopyWith$Variables$Query$ShipOrderReadAppellation(
    Variables$Query$ShipOrderReadAppellation instance,
    TRes Function(Variables$Query$ShipOrderReadAppellation) then,
  ) = _CopyWithImpl$Variables$Query$ShipOrderReadAppellation;

  factory CopyWith$Variables$Query$ShipOrderReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ShipOrderReadAppellation;

  TRes call({String? sharedAppellationsId, bool? ja, bool? en});
}

class _CopyWithImpl$Variables$Query$ShipOrderReadAppellation<TRes>
    implements CopyWith$Variables$Query$ShipOrderReadAppellation<TRes> {
  _CopyWithImpl$Variables$Query$ShipOrderReadAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$ShipOrderReadAppellation _instance;

  final TRes Function(Variables$Query$ShipOrderReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$ShipOrderReadAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShipOrderReadAppellation<TRes>
    implements CopyWith$Variables$Query$ShipOrderReadAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$ShipOrderReadAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId, bool? ja, bool? en}) => _res;
}

class Query$ShipOrderReadAppellation {
  Query$ShipOrderReadAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$ShipOrderReadAppellation.fromJson(Map<String, dynamic> json) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderReadAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$ShipOrderReadAppellation ||
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

extension UtilityExtension$Query$ShipOrderReadAppellation
    on Query$ShipOrderReadAppellation {
  CopyWith$Query$ShipOrderReadAppellation<Query$ShipOrderReadAppellation>
  get copyWith => CopyWith$Query$ShipOrderReadAppellation(this, (i) => i);
}

abstract class CopyWith$Query$ShipOrderReadAppellation<TRes> {
  factory CopyWith$Query$ShipOrderReadAppellation(
    Query$ShipOrderReadAppellation instance,
    TRes Function(Query$ShipOrderReadAppellation) then,
  ) = _CopyWithImpl$Query$ShipOrderReadAppellation;

  factory CopyWith$Query$ShipOrderReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$ShipOrderReadAppellation;

  TRes call({
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ShipOrderReadAppellation<TRes>
    implements CopyWith$Query$ShipOrderReadAppellation<TRes> {
  _CopyWithImpl$Query$ShipOrderReadAppellation(this._instance, this._then);

  final Query$ShipOrderReadAppellation _instance;

  final TRes Function(Query$ShipOrderReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderReadAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShipOrderReadAppellation<TRes>
    implements CopyWith$Query$ShipOrderReadAppellation<TRes> {
  _CopyWithStubImpl$Query$ShipOrderReadAppellation(this._res);

  TRes _res;

  call({
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryShipOrderReadAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShipOrderReadAppellation'),
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
Query$ShipOrderReadAppellation _parserFn$Query$ShipOrderReadAppellation(
  Map<String, dynamic> data,
) => Query$ShipOrderReadAppellation.fromJson(data);
typedef OnQueryComplete$Query$ShipOrderReadAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ShipOrderReadAppellation?,
    );

class Options$Query$ShipOrderReadAppellation
    extends graphql.QueryOptions<Query$ShipOrderReadAppellation> {
  Options$Query$ShipOrderReadAppellation({
    String? operationName,
    required Variables$Query$ShipOrderReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShipOrderReadAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShipOrderReadAppellation? onComplete,
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
                     : _parserFn$Query$ShipOrderReadAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryShipOrderReadAppellation,
         parserFn: _parserFn$Query$ShipOrderReadAppellation,
       );

  final OnQueryComplete$Query$ShipOrderReadAppellation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShipOrderReadAppellation
    extends graphql.WatchQueryOptions<Query$ShipOrderReadAppellation> {
  WatchOptions$Query$ShipOrderReadAppellation({
    String? operationName,
    required Variables$Query$ShipOrderReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShipOrderReadAppellation? typedOptimisticResult,
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
         document: documentNodeQueryShipOrderReadAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShipOrderReadAppellation,
       );
}

class FetchMoreOptions$Query$ShipOrderReadAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShipOrderReadAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShipOrderReadAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShipOrderReadAppellation,
       );
}

extension ClientExtension$Query$ShipOrderReadAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShipOrderReadAppellation>>
  query$ShipOrderReadAppellation(
    Options$Query$ShipOrderReadAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShipOrderReadAppellation>
  watchQuery$ShipOrderReadAppellation(
    WatchOptions$Query$ShipOrderReadAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$ShipOrderReadAppellation({
    required Query$ShipOrderReadAppellation data,
    required Variables$Query$ShipOrderReadAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryShipOrderReadAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShipOrderReadAppellation? readQuery$ShipOrderReadAppellation({
    required Variables$Query$ShipOrderReadAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryShipOrderReadAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ShipOrderReadAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShipOrderReadAppellation>
useQuery$ShipOrderReadAppellation(
  Options$Query$ShipOrderReadAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShipOrderReadAppellation>
useWatchQuery$ShipOrderReadAppellation(
  WatchOptions$Query$ShipOrderReadAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShipOrderReadAppellation$Widget
    extends graphql_flutter.Query<Query$ShipOrderReadAppellation> {
  Query$ShipOrderReadAppellation$Widget({
    widgets.Key? key,
    required Options$Query$ShipOrderReadAppellation options,
    required graphql_flutter.QueryBuilder<Query$ShipOrderReadAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId {
  Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId
    on Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId,
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
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShipOrderReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
