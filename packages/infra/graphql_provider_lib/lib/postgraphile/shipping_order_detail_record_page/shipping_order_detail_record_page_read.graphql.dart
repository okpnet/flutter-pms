import '../schema.graphql.dart';

import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ShippingOrderDetailRecordPageRead {
  factory Variables$Query$ShippingOrderDetailRecordPageRead({
    required int first,
    int? offset,
    Input$TransShippingOrderDetailRecordFilter? filter,
    List<Enum$TransShippingOrderDetailRecordsOrderBy>? orderBy,
    required String languageCodeId,
    required String transShippingOrderDetailId,
    bool? removed,
  }) => Variables$Query$ShippingOrderDetailRecordPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    r'transShippingOrderDetailId': transShippingOrderDetailId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$ShippingOrderDetailRecordPageRead._(this._$data);

  factory Variables$Query$ShippingOrderDetailRecordPageRead.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$TransShippingOrderDetailRecordFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => fromJson$Enum$TransShippingOrderDetailRecordsOrderBy(
              (e as String),
            ),
          )
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    final l$transShippingOrderDetailId = data['transShippingOrderDetailId'];
    result$data['transShippingOrderDetailId'] =
        (l$transShippingOrderDetailId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$ShippingOrderDetailRecordPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransShippingOrderDetailRecordFilter? get filter =>
      (_$data['filter'] as Input$TransShippingOrderDetailRecordFilter?);

  List<Enum$TransShippingOrderDetailRecordsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransShippingOrderDetailRecordsOrderBy>?);

  String get languageCodeId => (_$data['languageCodeId'] as String);

  String get transShippingOrderDetailId =>
      (_$data['transShippingOrderDetailId'] as String);

  bool? get removed => (_$data['removed'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$TransShippingOrderDetailRecordsOrderBy(e))
          .toList();
    }
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    result$data['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead<
    Variables$Query$ShippingOrderDetailRecordPageRead
  >
  get copyWith => CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShippingOrderDetailRecordPageRead ||
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
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
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
    final l$languageCodeId = languageCodeId;
    final lOther$languageCodeId = other.languageCodeId;
    if (l$languageCodeId != lOther$languageCodeId) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
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
    final l$filter = filter;
    final l$orderBy = orderBy;
    final l$languageCodeId = languageCodeId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$removed = removed;
    return Object.hashAll([
      l$first,
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
                ? null
                : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      l$languageCodeId,
      l$transShippingOrderDetailId,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead<
  TRes
> {
  factory CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead(
    Variables$Query$ShippingOrderDetailRecordPageRead instance,
    TRes Function(Variables$Query$ShippingOrderDetailRecordPageRead) then,
  ) = _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRead;

  factory CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransShippingOrderDetailRecordFilter? filter,
    List<Enum$TransShippingOrderDetailRecordsOrderBy>? orderBy,
    String? languageCodeId,
    String? transShippingOrderDetailId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRead<TRes>
    implements
        CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead<TRes> {
  _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$ShippingOrderDetailRecordPageRead _instance;

  final TRes Function(Variables$Query$ShippingOrderDetailRecordPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? transShippingOrderDetailId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$ShippingOrderDetailRecordPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined)
        'filter': (filter as Input$TransShippingOrderDetailRecordFilter?),
      if (orderBy != _undefined)
        'orderBy':
            (orderBy as List<Enum$TransShippingOrderDetailRecordsOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (transShippingOrderDetailId != _undefined &&
          transShippingOrderDetailId != null)
        'transShippingOrderDetailId': (transShippingOrderDetailId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRead<TRes>
    implements
        CopyWith$Variables$Query$ShippingOrderDetailRecordPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRead(
    this._res,
  );

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransShippingOrderDetailRecordFilter? filter,
    List<Enum$TransShippingOrderDetailRecordsOrderBy>? orderBy,
    String? languageCodeId,
    String? transShippingOrderDetailId,
    bool? removed,
  }) => _res;
}

class Query$ShippingOrderDetailRecordPageRead {
  Query$ShippingOrderDetailRecordPageRead({
    this.allTransShippingOrderDetailRecords,
    this.$__typename = 'Query',
  });

  factory Query$ShippingOrderDetailRecordPageRead.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$allTransShippingOrderDetailRecords =
        json['allTransShippingOrderDetailRecords'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead(
      allTransShippingOrderDetailRecords:
          l$allTransShippingOrderDetailRecords == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords.fromJson(
              (l$allTransShippingOrderDetailRecords as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords?
  allTransShippingOrderDetailRecords;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransShippingOrderDetailRecords =
        allTransShippingOrderDetailRecords;
    _resultData['allTransShippingOrderDetailRecords'] =
        l$allTransShippingOrderDetailRecords?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransShippingOrderDetailRecords =
        allTransShippingOrderDetailRecords;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allTransShippingOrderDetailRecords,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShippingOrderDetailRecordPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransShippingOrderDetailRecords =
        allTransShippingOrderDetailRecords;
    final lOther$allTransShippingOrderDetailRecords =
        other.allTransShippingOrderDetailRecords;
    if (l$allTransShippingOrderDetailRecords !=
        lOther$allTransShippingOrderDetailRecords) {
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead
    on Query$ShippingOrderDetailRecordPageRead {
  CopyWith$Query$ShippingOrderDetailRecordPageRead<
    Query$ShippingOrderDetailRecordPageRead
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead(this, (i) => i);
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead<TRes> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead(
    Query$ShippingOrderDetailRecordPageRead instance,
    TRes Function(Query$ShippingOrderDetailRecordPageRead) then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead;

  TRes call({
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords?
    allTransShippingOrderDetailRecords,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
    TRes
  >
  get allTransShippingOrderDetailRecords;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead<TRes>
    implements CopyWith$Query$ShippingOrderDetailRecordPageRead<TRes> {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead _instance;

  final TRes Function(Query$ShippingOrderDetailRecordPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransShippingOrderDetailRecords = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead(
      allTransShippingOrderDetailRecords:
          allTransShippingOrderDetailRecords == _undefined
          ? _instance.allTransShippingOrderDetailRecords
          : (allTransShippingOrderDetailRecords
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
    TRes
  >
  get allTransShippingOrderDetailRecords {
    final local$allTransShippingOrderDetailRecords =
        _instance.allTransShippingOrderDetailRecords;
    return local$allTransShippingOrderDetailRecords == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
            local$allTransShippingOrderDetailRecords,
            (e) => call(allTransShippingOrderDetailRecords: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead<TRes>
    implements CopyWith$Query$ShippingOrderDetailRecordPageRead<TRes> {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead(this._res);

  TRes _res;

  call({
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords?
    allTransShippingOrderDetailRecords,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
    TRes
  >
  get allTransShippingOrderDetailRecords =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords.stub(
        _res,
      );
}

const documentNodeQueryShippingOrderDetailRecordPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShippingOrderDetailRecordPageRead'),
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
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'TransShippingOrderDetailRecordFilter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'and'),
                  value: ListValueNode(values: []),
                ),
              ],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransShippingOrderDetailRecordsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'languageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
            name: NameNode(value: 'allTransShippingOrderDetailRecords'),
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
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'orderBy')),
              ),
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
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
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(
                                  value: 'transShippingOrderDetailId',
                                ),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'equalTo'),
                                      value: VariableNode(
                                        name: NameNode(
                                          value: 'transShippingOrderDetailId',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(
                          value: 'transShippingOrderDetailRecordId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transShippingOrderDetailId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'shippingDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'shippingQuantity'),
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
                          value: 'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'value'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'value'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'value'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
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
Query$ShippingOrderDetailRecordPageRead
_parserFn$Query$ShippingOrderDetailRecordPageRead(Map<String, dynamic> data) =>
    Query$ShippingOrderDetailRecordPageRead.fromJson(data);
typedef OnQueryComplete$Query$ShippingOrderDetailRecordPageRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ShippingOrderDetailRecordPageRead?,
    );

class Options$Query$ShippingOrderDetailRecordPageRead
    extends graphql.QueryOptions<Query$ShippingOrderDetailRecordPageRead> {
  Options$Query$ShippingOrderDetailRecordPageRead({
    String? operationName,
    required Variables$Query$ShippingOrderDetailRecordPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailRecordPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShippingOrderDetailRecordPageRead? onComplete,
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
                     : _parserFn$Query$ShippingOrderDetailRecordPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryShippingOrderDetailRecordPageRead,
         parserFn: _parserFn$Query$ShippingOrderDetailRecordPageRead,
       );

  final OnQueryComplete$Query$ShippingOrderDetailRecordPageRead?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShippingOrderDetailRecordPageRead
    extends graphql.WatchQueryOptions<Query$ShippingOrderDetailRecordPageRead> {
  WatchOptions$Query$ShippingOrderDetailRecordPageRead({
    String? operationName,
    required Variables$Query$ShippingOrderDetailRecordPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailRecordPageRead? typedOptimisticResult,
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
         document: documentNodeQueryShippingOrderDetailRecordPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShippingOrderDetailRecordPageRead,
       );
}

class FetchMoreOptions$Query$ShippingOrderDetailRecordPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShippingOrderDetailRecordPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShippingOrderDetailRecordPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShippingOrderDetailRecordPageRead,
       );
}

extension ClientExtension$Query$ShippingOrderDetailRecordPageRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShippingOrderDetailRecordPageRead>>
  query$ShippingOrderDetailRecordPageRead(
    Options$Query$ShippingOrderDetailRecordPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShippingOrderDetailRecordPageRead>
  watchQuery$ShippingOrderDetailRecordPageRead(
    WatchOptions$Query$ShippingOrderDetailRecordPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$ShippingOrderDetailRecordPageRead({
    required Query$ShippingOrderDetailRecordPageRead data,
    required Variables$Query$ShippingOrderDetailRecordPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryShippingOrderDetailRecordPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShippingOrderDetailRecordPageRead?
  readQuery$ShippingOrderDetailRecordPageRead({
    required Variables$Query$ShippingOrderDetailRecordPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryShippingOrderDetailRecordPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ShippingOrderDetailRecordPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShippingOrderDetailRecordPageRead>
useQuery$ShippingOrderDetailRecordPageRead(
  Options$Query$ShippingOrderDetailRecordPageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShippingOrderDetailRecordPageRead>
useWatchQuery$ShippingOrderDetailRecordPageRead(
  WatchOptions$Query$ShippingOrderDetailRecordPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShippingOrderDetailRecordPageRead$Widget
    extends graphql_flutter.Query<Query$ShippingOrderDetailRecordPageRead> {
  Query$ShippingOrderDetailRecordPageRead$Widget({
    widgets.Key? key,
    required Options$Query$ShippingOrderDetailRecordPageRead options,
    required graphql_flutter.QueryBuilder<
      Query$ShippingOrderDetailRecordPageRead
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransShippingOrderDetailRecordsConnection',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo
  pageInfo;

  final List<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
  >
  nodes;

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
    if (other
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords
    on Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords;

  TRes call({
    int? totalCount,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo?
    pageInfo,
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo?
    pageInfo,
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
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
    if (other
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
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

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes({
    required this.transShippingOrderDetailRecordId,
    required this.transShippingOrderDetailId,
    required this.shippingDate,
    required this.shippingQuantity,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'TransShippingOrderDetailRecord',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailRecordId =
        json['transShippingOrderDetailRecordId'];
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$shippingDate = json['shippingDate'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
      transShippingOrderDetailRecordId:
          (l$transShippingOrderDetailRecordId as String),
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      shippingDate: (l$shippingDate as String),
      shippingQuantity: (l$shippingQuantity as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailRecordId;

  final String transShippingOrderDetailId;

  final String shippingDate;

  final String shippingQuantity;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    _resultData['transShippingOrderDetailRecordId'] =
        l$transShippingOrderDetailRecordId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    _resultData['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    final l$shippingDate = shippingDate;
    _resultData['shippingDate'] = l$shippingDate;
    final l$shippingQuantity = shippingQuantity;
    _resultData['shippingQuantity'] = l$shippingQuantity;
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
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$shippingDate = shippingDate;
    final l$shippingQuantity = shippingQuantity;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailRecordId,
      l$transShippingOrderDetailId,
      l$shippingDate,
      l$shippingQuantity,
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final lOther$transShippingOrderDetailRecordId =
        other.transShippingOrderDetailRecordId;
    if (l$transShippingOrderDetailRecordId !=
        lOther$transShippingOrderDetailRecordId) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$shippingDate = shippingDate;
    final lOther$shippingDate = other.shippingDate;
    if (l$shippingDate != lOther$shippingDate) {
      return false;
    }
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (l$shippingQuantity != lOther$shippingQuantity) {
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes;

  TRes call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecordId = _undefined,
    Object? transShippingOrderDetailId = _undefined,
    Object? shippingDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
      transShippingOrderDetailRecordId:
          transShippingOrderDetailRecordId == _undefined ||
              transShippingOrderDetailRecordId == null
          ? _instance.transShippingOrderDetailRecordId
          : (transShippingOrderDetailRecordId as String),
      transShippingOrderDetailId:
          transShippingOrderDetailId == _undefined ||
              transShippingOrderDetailId == null
          ? _instance.transShippingOrderDetailId
          : (transShippingOrderDetailId as String),
      shippingDate: shippingDate == _undefined || shippingDate == null
          ? _instance.shippingDate
          : (shippingDate as String),
      shippingQuantity:
          shippingQuantity == _undefined || shippingQuantity == null
          ? _instance.shippingQuantity
          : (shippingQuantity as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user({
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

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user.fromJson(
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
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name.fromJson(
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

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name?
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user,
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
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
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
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name?),
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

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name.fromJson(
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
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name,
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
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRead$allTransShippingOrderDetailRecords$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
