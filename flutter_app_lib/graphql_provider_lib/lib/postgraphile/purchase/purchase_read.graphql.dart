import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$PurchaseRead {
  factory Variables$Query$PurchaseRead({
    required int first,
    int? offset,
    Input$TransPurchaseCondition? condition,
    List<Enum$TransPurchasesOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$PurchaseRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$PurchaseRead._(this._$data);

  factory Variables$Query$PurchaseRead.fromJson(Map<String, dynamic> data) {
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
          : Input$TransPurchaseCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransPurchasesOrderBy((e as String)))
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
    return Variables$Query$PurchaseRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransPurchaseCondition? get condition =>
      (_$data['condition'] as Input$TransPurchaseCondition?);

  List<Enum$TransPurchasesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransPurchasesOrderBy>?);

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
          ?.map((e) => toJson$Enum$TransPurchasesOrderBy(e))
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

  CopyWith$Variables$Query$PurchaseRead<Variables$Query$PurchaseRead>
  get copyWith => CopyWith$Variables$Query$PurchaseRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PurchaseRead ||
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

abstract class CopyWith$Variables$Query$PurchaseRead<TRes> {
  factory CopyWith$Variables$Query$PurchaseRead(
    Variables$Query$PurchaseRead instance,
    TRes Function(Variables$Query$PurchaseRead) then,
  ) = _CopyWithImpl$Variables$Query$PurchaseRead;

  factory CopyWith$Variables$Query$PurchaseRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PurchaseRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransPurchaseCondition? condition,
    List<Enum$TransPurchasesOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$PurchaseRead<TRes>
    implements CopyWith$Variables$Query$PurchaseRead<TRes> {
  _CopyWithImpl$Variables$Query$PurchaseRead(this._instance, this._then);

  final Variables$Query$PurchaseRead _instance;

  final TRes Function(Variables$Query$PurchaseRead) _then;

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
    Variables$Query$PurchaseRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$TransPurchaseCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransPurchasesOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PurchaseRead<TRes>
    implements CopyWith$Variables$Query$PurchaseRead<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchaseRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransPurchaseCondition? condition,
    List<Enum$TransPurchasesOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$PurchaseRead {
  Query$PurchaseRead({this.allTransPurchases, this.$__typename = 'Query'});

  factory Query$PurchaseRead.fromJson(Map<String, dynamic> json) {
    final l$allTransPurchases = json['allTransPurchases'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead(
      allTransPurchases: l$allTransPurchases == null
          ? null
          : Query$PurchaseRead$allTransPurchases.fromJson(
              (l$allTransPurchases as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseRead$allTransPurchases? allTransPurchases;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransPurchases = allTransPurchases;
    _resultData['allTransPurchases'] = l$allTransPurchases?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransPurchases = allTransPurchases;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransPurchases, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PurchaseRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransPurchases = allTransPurchases;
    final lOther$allTransPurchases = other.allTransPurchases;
    if (l$allTransPurchases != lOther$allTransPurchases) {
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

extension UtilityExtension$Query$PurchaseRead on Query$PurchaseRead {
  CopyWith$Query$PurchaseRead<Query$PurchaseRead> get copyWith =>
      CopyWith$Query$PurchaseRead(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseRead<TRes> {
  factory CopyWith$Query$PurchaseRead(
    Query$PurchaseRead instance,
    TRes Function(Query$PurchaseRead) then,
  ) = _CopyWithImpl$Query$PurchaseRead;

  factory CopyWith$Query$PurchaseRead.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseRead;

  TRes call({
    Query$PurchaseRead$allTransPurchases? allTransPurchases,
    String? $__typename,
  });
  CopyWith$Query$PurchaseRead$allTransPurchases<TRes> get allTransPurchases;
}

class _CopyWithImpl$Query$PurchaseRead<TRes>
    implements CopyWith$Query$PurchaseRead<TRes> {
  _CopyWithImpl$Query$PurchaseRead(this._instance, this._then);

  final Query$PurchaseRead _instance;

  final TRes Function(Query$PurchaseRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransPurchases = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead(
      allTransPurchases: allTransPurchases == _undefined
          ? _instance.allTransPurchases
          : (allTransPurchases as Query$PurchaseRead$allTransPurchases?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseRead$allTransPurchases<TRes> get allTransPurchases {
    final local$allTransPurchases = _instance.allTransPurchases;
    return local$allTransPurchases == null
        ? CopyWith$Query$PurchaseRead$allTransPurchases.stub(_then(_instance))
        : CopyWith$Query$PurchaseRead$allTransPurchases(
            local$allTransPurchases,
            (e) => call(allTransPurchases: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseRead<TRes>
    implements CopyWith$Query$PurchaseRead<TRes> {
  _CopyWithStubImpl$Query$PurchaseRead(this._res);

  TRes _res;

  call({
    Query$PurchaseRead$allTransPurchases? allTransPurchases,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseRead$allTransPurchases<TRes> get allTransPurchases =>
      CopyWith$Query$PurchaseRead$allTransPurchases.stub(_res);
}

const documentNodeQueryPurchaseRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PurchaseRead'),
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
            name: NameNode(value: 'TransPurchaseCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TransPurchasesOrderBy'),
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
            name: NameNode(value: 'allTransPurchases'),
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
                        name: NameNode(value: 'transPurchaseId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'supplierHistoryId'),
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
                        name: NameNode(value: 'registerAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'purchaseOrderDate'),
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
                              'historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId',
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
                        name: NameNode(value: 'contactHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderContactId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId',
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
                          value: 'transPurchaseDetailsByTransPurchaseId',
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
Query$PurchaseRead _parserFn$Query$PurchaseRead(Map<String, dynamic> data) =>
    Query$PurchaseRead.fromJson(data);
typedef OnQueryComplete$Query$PurchaseRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PurchaseRead?);

class Options$Query$PurchaseRead
    extends graphql.QueryOptions<Query$PurchaseRead> {
  Options$Query$PurchaseRead({
    String? operationName,
    required Variables$Query$PurchaseRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchaseRead? onComplete,
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
                 data == null ? null : _parserFn$Query$PurchaseRead(data),
               ),
         onError: onError,
         document: documentNodeQueryPurchaseRead,
         parserFn: _parserFn$Query$PurchaseRead,
       );

  final OnQueryComplete$Query$PurchaseRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PurchaseRead
    extends graphql.WatchQueryOptions<Query$PurchaseRead> {
  WatchOptions$Query$PurchaseRead({
    String? operationName,
    required Variables$Query$PurchaseRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseRead? typedOptimisticResult,
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
         document: documentNodeQueryPurchaseRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PurchaseRead,
       );
}

class FetchMoreOptions$Query$PurchaseRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchaseRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchaseRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPurchaseRead,
       );
}

extension ClientExtension$Query$PurchaseRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchaseRead>> query$PurchaseRead(
    Options$Query$PurchaseRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PurchaseRead> watchQuery$PurchaseRead(
    WatchOptions$Query$PurchaseRead options,
  ) => this.watchQuery(options);

  void writeQuery$PurchaseRead({
    required Query$PurchaseRead data,
    required Variables$Query$PurchaseRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryPurchaseRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PurchaseRead? readQuery$PurchaseRead({
    required Variables$Query$PurchaseRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPurchaseRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PurchaseRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchaseRead> useQuery$PurchaseRead(
  Options$Query$PurchaseRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchaseRead> useWatchQuery$PurchaseRead(
  WatchOptions$Query$PurchaseRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$PurchaseRead$Widget
    extends graphql_flutter.Query<Query$PurchaseRead> {
  Query$PurchaseRead$Widget({
    widgets.Key? key,
    required Options$Query$PurchaseRead options,
    required graphql_flutter.QueryBuilder<Query$PurchaseRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PurchaseRead$allTransPurchases {
  Query$PurchaseRead$allTransPurchases({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransPurchasesConnection',
  });

  factory Query$PurchaseRead$allTransPurchases.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases(
      totalCount: (l$totalCount as int),
      pageInfo: Query$PurchaseRead$allTransPurchases$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$PurchaseRead$allTransPurchases$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$PurchaseRead$allTransPurchases$pageInfo pageInfo;

  final List<Query$PurchaseRead$allTransPurchases$nodes?> nodes;

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
    if (other is! Query$PurchaseRead$allTransPurchases ||
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases
    on Query$PurchaseRead$allTransPurchases {
  CopyWith$Query$PurchaseRead$allTransPurchases<
    Query$PurchaseRead$allTransPurchases
  >
  get copyWith => CopyWith$Query$PurchaseRead$allTransPurchases(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases<TRes> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases(
    Query$PurchaseRead$allTransPurchases instance,
    TRes Function(Query$PurchaseRead$allTransPurchases) then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases;

  factory CopyWith$Query$PurchaseRead$allTransPurchases.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases;

  TRes call({
    int? totalCount,
    Query$PurchaseRead$allTransPurchases$pageInfo? pageInfo,
    List<Query$PurchaseRead$allTransPurchases$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$PurchaseRead$allTransPurchases$nodes?> Function(
      Iterable<
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes<
          Query$PurchaseRead$allTransPurchases$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases<TRes> {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases _instance;

  final TRes Function(Query$PurchaseRead$allTransPurchases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$PurchaseRead$allTransPurchases$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$PurchaseRead$allTransPurchases$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$PurchaseRead$allTransPurchases$nodes?> Function(
      Iterable<
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes<
          Query$PurchaseRead$allTransPurchases$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$PurchaseRead$allTransPurchases$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases<TRes> {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$PurchaseRead$allTransPurchases$pageInfo? pageInfo,
    List<Query$PurchaseRead$allTransPurchases$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$PurchaseRead$allTransPurchases$pageInfo {
  Query$PurchaseRead$allTransPurchases$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$PurchaseRead$allTransPurchases$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$pageInfo(
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
    if (other is! Query$PurchaseRead$allTransPurchases$pageInfo ||
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$pageInfo
    on Query$PurchaseRead$allTransPurchases$pageInfo {
  CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<
    Query$PurchaseRead$allTransPurchases$pageInfo
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo(
    Query$PurchaseRead$allTransPurchases$pageInfo instance,
    TRes Function(Query$PurchaseRead$allTransPurchases$pageInfo) then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$pageInfo;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$pageInfo<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$pageInfo(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$pageInfo _instance;

  final TRes Function(Query$PurchaseRead$allTransPurchases$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$pageInfo(
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

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$pageInfo<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases$pageInfo<TRes> {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$PurchaseRead$allTransPurchases$nodes {
  Query$PurchaseRead$allTransPurchases$nodes({
    required this.transPurchaseId,
    required this.supplierHistoryId,
    required this.mstrStakeholderId,
    this.registerAt,
    this.purchaseOrderDate,
    this.deadline,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
    this.contactHistoryId,
    this.mstrStakeholderContactId,
    this.historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
    required this.transPurchaseDetailsByTransPurchaseId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'TransPurchase',
  });

  factory Query$PurchaseRead$allTransPurchases$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseId = json['transPurchaseId'];
    final l$supplierHistoryId = json['supplierHistoryId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$registerAt = json['registerAt'];
    final l$purchaseOrderDate = json['purchaseOrderDate'];
    final l$deadline = json['deadline'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        json['historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId'];
    final l$contactHistoryId = json['contactHistoryId'];
    final l$mstrStakeholderContactId = json['mstrStakeholderContactId'];
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        json['historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId'];
    final l$transPurchaseDetailsByTransPurchaseId =
        json['transPurchaseDetailsByTransPurchaseId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$nodes(
      transPurchaseId: (l$transPurchaseId as String),
      supplierHistoryId: (l$supplierHistoryId as String),
      mstrStakeholderId: (l$mstrStakeholderId as String),
      registerAt: (l$registerAt as String?),
      purchaseOrderDate: (l$purchaseOrderDate as String?),
      deadline: (l$deadline as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId:
          l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId ==
              null
          ? null
          : Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId.fromJson(
              (l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
                  as Map<String, dynamic>),
            ),
      contactHistoryId: (l$contactHistoryId as String?),
      mstrStakeholderContactId: (l$mstrStakeholderContactId as String?),
      historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId:
          l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId ==
              null
          ? null
          : Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId.fromJson(
              (l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
                  as Map<String, dynamic>),
            ),
      transPurchaseDetailsByTransPurchaseId:
          Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId.fromJson(
            (l$transPurchaseDetailsByTransPurchaseId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transPurchaseId;

  final String supplierHistoryId;

  final String mstrStakeholderId;

  final String? registerAt;

  final String? purchaseOrderDate;

  final String? deadline;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId?
  historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;

  final String? contactHistoryId;

  final String? mstrStakeholderContactId;

  final Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId?
  historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;

  final Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId
  transPurchaseDetailsByTransPurchaseId;

  final Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseId = transPurchaseId;
    _resultData['transPurchaseId'] = l$transPurchaseId;
    final l$supplierHistoryId = supplierHistoryId;
    _resultData['supplierHistoryId'] = l$supplierHistoryId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$registerAt = registerAt;
    _resultData['registerAt'] = l$registerAt;
    final l$purchaseOrderDate = purchaseOrderDate;
    _resultData['purchaseOrderDate'] = l$purchaseOrderDate;
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
    final l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
    _resultData['historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId'] =
        l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
            ?.toJson();
    final l$contactHistoryId = contactHistoryId;
    _resultData['contactHistoryId'] = l$contactHistoryId;
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    _resultData['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
    _resultData['historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId'] =
        l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
            ?.toJson();
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    _resultData['transPurchaseDetailsByTransPurchaseId'] =
        l$transPurchaseDetailsByTransPurchaseId.toJson();
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
    final l$transPurchaseId = transPurchaseId;
    final l$supplierHistoryId = supplierHistoryId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$registerAt = registerAt;
    final l$purchaseOrderDate = purchaseOrderDate;
    final l$deadline = deadline;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transPurchaseId,
      l$supplierHistoryId,
      l$mstrStakeholderId,
      l$registerAt,
      l$purchaseOrderDate,
      l$deadline,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
      l$contactHistoryId,
      l$mstrStakeholderContactId,
      l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
      l$transPurchaseDetailsByTransPurchaseId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PurchaseRead$allTransPurchases$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$supplierHistoryId = supplierHistoryId;
    final lOther$supplierHistoryId = other.supplierHistoryId;
    if (l$supplierHistoryId != lOther$supplierHistoryId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$registerAt = registerAt;
    final lOther$registerAt = other.registerAt;
    if (l$registerAt != lOther$registerAt) {
      return false;
    }
    final l$purchaseOrderDate = purchaseOrderDate;
    final lOther$purchaseOrderDate = other.purchaseOrderDate;
    if (l$purchaseOrderDate != lOther$purchaseOrderDate) {
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
    final l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
    final lOther$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        other.historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
    if (l$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId !=
        lOther$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId) {
      return false;
    }
    final l$contactHistoryId = contactHistoryId;
    final lOther$contactHistoryId = other.contactHistoryId;
    if (l$contactHistoryId != lOther$contactHistoryId) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
    final lOther$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        other
            .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
    if (l$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId !=
        lOther$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId) {
      return false;
    }
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    final lOther$transPurchaseDetailsByTransPurchaseId =
        other.transPurchaseDetailsByTransPurchaseId;
    if (l$transPurchaseDetailsByTransPurchaseId !=
        lOther$transPurchaseDetailsByTransPurchaseId) {
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$nodes
    on Query$PurchaseRead$allTransPurchases$nodes {
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes<
    Query$PurchaseRead$allTransPurchases$nodes
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$nodes<TRes> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes(
    Query$PurchaseRead$allTransPurchases$nodes instance,
    TRes Function(Query$PurchaseRead$allTransPurchases$nodes) then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes;

  TRes call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId?
    historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId?
    transPurchaseDetailsByTransPurchaseId,
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId;
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases$nodes<TRes> {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$nodes _instance;

  final TRes Function(Query$PurchaseRead$allTransPurchases$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseId = _undefined,
    Object? supplierHistoryId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? registerAt = _undefined,
    Object? purchaseOrderDate = _undefined,
    Object? deadline = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderContactId = _undefined,
    Object?
        historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        _undefined,
    Object? transPurchaseDetailsByTransPurchaseId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$nodes(
      transPurchaseId: transPurchaseId == _undefined || transPurchaseId == null
          ? _instance.transPurchaseId
          : (transPurchaseId as String),
      supplierHistoryId:
          supplierHistoryId == _undefined || supplierHistoryId == null
          ? _instance.supplierHistoryId
          : (supplierHistoryId as String),
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      registerAt: registerAt == _undefined
          ? _instance.registerAt
          : (registerAt as String?),
      purchaseOrderDate: purchaseOrderDate == _undefined
          ? _instance.purchaseOrderDate
          : (purchaseOrderDate as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId:
          historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId ==
              _undefined
          ? _instance
                .historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
          : (historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
                as Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId?),
      contactHistoryId: contactHistoryId == _undefined
          ? _instance.contactHistoryId
          : (contactHistoryId as String?),
      mstrStakeholderContactId: mstrStakeholderContactId == _undefined
          ? _instance.mstrStakeholderContactId
          : (mstrStakeholderContactId as String?),
      historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId:
          historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId ==
              _undefined
          ? _instance
                .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
          : (historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
                as Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId?),
      transPurchaseDetailsByTransPurchaseId:
          transPurchaseDetailsByTransPurchaseId == _undefined ||
              transPurchaseDetailsByTransPurchaseId == null
          ? _instance.transPurchaseDetailsByTransPurchaseId
          : (transPurchaseDetailsByTransPurchaseId
                as Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId {
    final local$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =
        _instance.historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;
    return local$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId ==
            null
        ? CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
            local$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
            (e) => call(
              historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId: e,
            ),
          );
  }

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId {
    final local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =
        _instance
            .historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;
    return local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId ==
            null
        ? CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
            local$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
            (e) => call(
              historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId:
                  e,
            ),
          );
  }

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId {
    final local$transPurchaseDetailsByTransPurchaseId =
        _instance.transPurchaseDetailsByTransPurchaseId;
    return CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
      local$transPurchaseDetailsByTransPurchaseId,
      (e) => call(transPurchaseDetailsByTransPurchaseId: e),
    );
  }

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes<TRes>
    implements CopyWith$Query$PurchaseRead$allTransPurchases$nodes<TRes> {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes(this._res);

  TRes _res;

  call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId?
    historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId?
    historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId?
    transPurchaseDetailsByTransPurchaseId,
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
    TRes
  >
  get historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId.stub(
        _res,
      );

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
    TRes
  >
  get historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId.stub(
        _res,
      );

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId.stub(
        _res,
      );

  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId {
  Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId({
    required this.historyId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryMstrStakeholder',
  });

  factory Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
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
            is! Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId ||
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
    on
        Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId {
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
  TRes
> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
    instance,
    TRes Function(
      Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId;

  TRes call({
    String? historyId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId
  _instance;

  final TRes Function(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
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

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderBySupplierHistoryIdAndMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? sharedAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId {
  Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId({
    required this.historyId,
    required this.contactPersonAppellationsId,
    this.$__typename = 'HistoryMstrStakeholderContact',
  });

  factory Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$contactPersonAppellationsId = json['contactPersonAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
      historyId: (l$historyId as String),
      contactPersonAppellationsId: (l$contactPersonAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String contactPersonAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    _resultData['contactPersonAppellationsId'] = l$contactPersonAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
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
            is! Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
    on
        Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId {
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
  TRes
> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
    instance,
    TRes Function(
      Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId;

  TRes call({
    String? historyId,
    String? contactPersonAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId
  _instance;

  final TRes Function(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? contactPersonAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
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

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyMstrStakeholderContactByContactHistoryIdAndMstrStakeholderContactId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? contactPersonAppellationsId,
    String? $__typename,
  }) => _res;
}

class Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId {
  Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId({
    required this.totalCount,
    this.$__typename = 'TransPurchaseDetailsConnection',
  });

  factory Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
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
            is! Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId ||
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId
    on
        Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId {
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
  TRes
> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId
    instance,
    TRes Function(
      Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId
  _instance;

  final TRes Function(
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$transPurchaseDetailsByTransPurchaseId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseRead$allTransPurchases$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$PurchaseReadAppellation {
  factory Variables$Query$PurchaseReadAppellation({
    required String sharedAppellationsId,
    required bool ja,
    required bool en,
  }) => Variables$Query$PurchaseReadAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$PurchaseReadAppellation._(this._$data);

  factory Variables$Query$PurchaseReadAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$PurchaseReadAppellation._(result$data);
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

  CopyWith$Variables$Query$PurchaseReadAppellation<
    Variables$Query$PurchaseReadAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$PurchaseReadAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PurchaseReadAppellation ||
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

abstract class CopyWith$Variables$Query$PurchaseReadAppellation<TRes> {
  factory CopyWith$Variables$Query$PurchaseReadAppellation(
    Variables$Query$PurchaseReadAppellation instance,
    TRes Function(Variables$Query$PurchaseReadAppellation) then,
  ) = _CopyWithImpl$Variables$Query$PurchaseReadAppellation;

  factory CopyWith$Variables$Query$PurchaseReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PurchaseReadAppellation;

  TRes call({String? sharedAppellationsId, bool? ja, bool? en});
}

class _CopyWithImpl$Variables$Query$PurchaseReadAppellation<TRes>
    implements CopyWith$Variables$Query$PurchaseReadAppellation<TRes> {
  _CopyWithImpl$Variables$Query$PurchaseReadAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$PurchaseReadAppellation _instance;

  final TRes Function(Variables$Query$PurchaseReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$PurchaseReadAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PurchaseReadAppellation<TRes>
    implements CopyWith$Variables$Query$PurchaseReadAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchaseReadAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId, bool? ja, bool? en}) => _res;
}

class Query$PurchaseReadAppellation {
  Query$PurchaseReadAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$PurchaseReadAppellation.fromJson(Map<String, dynamic> json) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseReadAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$PurchaseReadAppellation ||
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

extension UtilityExtension$Query$PurchaseReadAppellation
    on Query$PurchaseReadAppellation {
  CopyWith$Query$PurchaseReadAppellation<Query$PurchaseReadAppellation>
  get copyWith => CopyWith$Query$PurchaseReadAppellation(this, (i) => i);
}

abstract class CopyWith$Query$PurchaseReadAppellation<TRes> {
  factory CopyWith$Query$PurchaseReadAppellation(
    Query$PurchaseReadAppellation instance,
    TRes Function(Query$PurchaseReadAppellation) then,
  ) = _CopyWithImpl$Query$PurchaseReadAppellation;

  factory CopyWith$Query$PurchaseReadAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchaseReadAppellation;

  TRes call({
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$PurchaseReadAppellation<TRes>
    implements CopyWith$Query$PurchaseReadAppellation<TRes> {
  _CopyWithImpl$Query$PurchaseReadAppellation(this._instance, this._then);

  final Query$PurchaseReadAppellation _instance;

  final TRes Function(Query$PurchaseReadAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseReadAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseReadAppellation<TRes>
    implements CopyWith$Query$PurchaseReadAppellation<TRes> {
  _CopyWithStubImpl$Query$PurchaseReadAppellation(this._res);

  TRes _res;

  call({
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryPurchaseReadAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PurchaseReadAppellation'),
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
Query$PurchaseReadAppellation _parserFn$Query$PurchaseReadAppellation(
  Map<String, dynamic> data,
) => Query$PurchaseReadAppellation.fromJson(data);
typedef OnQueryComplete$Query$PurchaseReadAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$PurchaseReadAppellation?,
    );

class Options$Query$PurchaseReadAppellation
    extends graphql.QueryOptions<Query$PurchaseReadAppellation> {
  Options$Query$PurchaseReadAppellation({
    String? operationName,
    required Variables$Query$PurchaseReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseReadAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchaseReadAppellation? onComplete,
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
                     : _parserFn$Query$PurchaseReadAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryPurchaseReadAppellation,
         parserFn: _parserFn$Query$PurchaseReadAppellation,
       );

  final OnQueryComplete$Query$PurchaseReadAppellation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PurchaseReadAppellation
    extends graphql.WatchQueryOptions<Query$PurchaseReadAppellation> {
  WatchOptions$Query$PurchaseReadAppellation({
    String? operationName,
    required Variables$Query$PurchaseReadAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchaseReadAppellation? typedOptimisticResult,
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
         document: documentNodeQueryPurchaseReadAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PurchaseReadAppellation,
       );
}

class FetchMoreOptions$Query$PurchaseReadAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchaseReadAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchaseReadAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPurchaseReadAppellation,
       );
}

extension ClientExtension$Query$PurchaseReadAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchaseReadAppellation>>
  query$PurchaseReadAppellation(
    Options$Query$PurchaseReadAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PurchaseReadAppellation>
  watchQuery$PurchaseReadAppellation(
    WatchOptions$Query$PurchaseReadAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$PurchaseReadAppellation({
    required Query$PurchaseReadAppellation data,
    required Variables$Query$PurchaseReadAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPurchaseReadAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PurchaseReadAppellation? readQuery$PurchaseReadAppellation({
    required Variables$Query$PurchaseReadAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPurchaseReadAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PurchaseReadAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchaseReadAppellation>
useQuery$PurchaseReadAppellation(
  Options$Query$PurchaseReadAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchaseReadAppellation>
useWatchQuery$PurchaseReadAppellation(
  WatchOptions$Query$PurchaseReadAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$PurchaseReadAppellation$Widget
    extends graphql_flutter.Query<Query$PurchaseReadAppellation> {
  Query$PurchaseReadAppellation$Widget({
    widgets.Key? key,
    required Options$Query$PurchaseReadAppellation options,
    required graphql_flutter.QueryBuilder<Query$PurchaseReadAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId {
  Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId
    on Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId,
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
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$PurchaseReadAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
