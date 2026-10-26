import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ShippingOrderDetailRecordPageEdit {
  factory Variables$Mutation$ShippingOrderDetailRecordPageEdit({
    required String transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
  }) => Variables$Mutation$ShippingOrderDetailRecordPageEdit._({
    r'transShippingOrderDetailRecordId': transShippingOrderDetailRecordId,
    if (transShippingOrderDetailId != null)
      r'transShippingOrderDetailId': transShippingOrderDetailId,
    if (shippingDate != null) r'shippingDate': shippingDate,
    if (shippingQuantity != null) r'shippingQuantity': shippingQuantity,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ShippingOrderDetailRecordPageEdit._(this._$data);

  factory Variables$Mutation$ShippingOrderDetailRecordPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId =
        data['transShippingOrderDetailRecordId'];
    result$data['transShippingOrderDetailRecordId'] =
        (l$transShippingOrderDetailRecordId as String);
    if (data.containsKey('transShippingOrderDetailId')) {
      final l$transShippingOrderDetailId = data['transShippingOrderDetailId'];
      result$data['transShippingOrderDetailId'] =
          (l$transShippingOrderDetailId as String?);
    }
    if (data.containsKey('shippingDate')) {
      final l$shippingDate = data['shippingDate'];
      result$data['shippingDate'] = (l$shippingDate as String?);
    }
    if (data.containsKey('shippingQuantity')) {
      final l$shippingQuantity = data['shippingQuantity'];
      result$data['shippingQuantity'] = (l$shippingQuantity as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ShippingOrderDetailRecordPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderDetailRecordId =>
      (_$data['transShippingOrderDetailRecordId'] as String);

  String? get transShippingOrderDetailId =>
      (_$data['transShippingOrderDetailId'] as String?);

  String? get shippingDate => (_$data['shippingDate'] as String?);

  String? get shippingQuantity => (_$data['shippingQuantity'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    result$data['transShippingOrderDetailRecordId'] =
        l$transShippingOrderDetailRecordId;
    if (_$data.containsKey('transShippingOrderDetailId')) {
      final l$transShippingOrderDetailId = transShippingOrderDetailId;
      result$data['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    }
    if (_$data.containsKey('shippingDate')) {
      final l$shippingDate = shippingDate;
      result$data['shippingDate'] = l$shippingDate;
    }
    if (_$data.containsKey('shippingQuantity')) {
      final l$shippingQuantity = shippingQuantity;
      result$data['shippingQuantity'] = l$shippingQuantity;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit<
    Variables$Mutation$ShippingOrderDetailRecordPageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ShippingOrderDetailRecordPageEdit ||
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
    if (_$data.containsKey('transShippingOrderDetailId') !=
        other._$data.containsKey('transShippingOrderDetailId')) {
      return false;
    }
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$shippingDate = shippingDate;
    final lOther$shippingDate = other.shippingDate;
    if (_$data.containsKey('shippingDate') !=
        other._$data.containsKey('shippingDate')) {
      return false;
    }
    if (l$shippingDate != lOther$shippingDate) {
      return false;
    }
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (_$data.containsKey('shippingQuantity') !=
        other._$data.containsKey('shippingQuantity')) {
      return false;
    }
    if (l$shippingQuantity != lOther$shippingQuantity) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (_$data.containsKey('remarks') != other._$data.containsKey('remarks')) {
      return false;
    }
    if (l$remarks != lOther$remarks) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$shippingDate = shippingDate;
    final l$shippingQuantity = shippingQuantity;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transShippingOrderDetailRecordId,
      _$data.containsKey('transShippingOrderDetailId')
          ? l$transShippingOrderDetailId
          : const {},
      _$data.containsKey('shippingDate') ? l$shippingDate : const {},
      _$data.containsKey('shippingQuantity') ? l$shippingQuantity : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit<
  TRes
> {
  factory CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit(
    Variables$Mutation$ShippingOrderDetailRecordPageEdit instance,
    TRes Function(Variables$Mutation$ShippingOrderDetailRecordPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit;

  factory CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit;

  TRes call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit<TRes>
    implements
        CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ShippingOrderDetailRecordPageEdit _instance;

  final TRes Function(Variables$Mutation$ShippingOrderDetailRecordPageEdit)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecordId = _undefined,
    Object? transShippingOrderDetailId = _undefined,
    Object? shippingDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ShippingOrderDetailRecordPageEdit._({
      ..._instance._$data,
      if (transShippingOrderDetailRecordId != _undefined &&
          transShippingOrderDetailRecordId != null)
        'transShippingOrderDetailRecordId':
            (transShippingOrderDetailRecordId as String),
      if (transShippingOrderDetailId != _undefined)
        'transShippingOrderDetailId': (transShippingOrderDetailId as String?),
      if (shippingDate != _undefined) 'shippingDate': (shippingDate as String?),
      if (shippingQuantity != _undefined)
        'shippingQuantity': (shippingQuantity as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit<
  TRes
>
    implements
        CopyWith$Variables$Mutation$ShippingOrderDetailRecordPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailRecordPageEdit(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
  }) => _res;
}

class Mutation$ShippingOrderDetailRecordPageEdit {
  Mutation$ShippingOrderDetailRecordPageEdit({
    this.updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ShippingOrderDetailRecordPageEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        json['updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailRecordPageEdit(
      updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
          l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
              null
          ? null
          : Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId.fromJson(
              (l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
  updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    _resultData['updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId'] =
        l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
            ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ShippingOrderDetailRecordPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    final lOther$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        other
            .updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    if (l$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId !=
        lOther$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId) {
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

extension UtilityExtension$Mutation$ShippingOrderDetailRecordPageEdit
    on Mutation$ShippingOrderDetailRecordPageEdit {
  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit<
    Mutation$ShippingOrderDetailRecordPageEdit
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderDetailRecordPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ShippingOrderDetailRecordPageEdit<TRes> {
  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit(
    Mutation$ShippingOrderDetailRecordPageEdit instance,
    TRes Function(Mutation$ShippingOrderDetailRecordPageEdit) then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit;

  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit;

  TRes call({
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
    updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
}

class _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderDetailRecordPageEdit<TRes> {
  _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailRecordPageEdit _instance;

  final TRes Function(Mutation$ShippingOrderDetailRecordPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object?
        updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailRecordPageEdit(
      updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
          updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
              _undefined
          ? _instance
                .updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
          : (updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
                as Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
    final local$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        _instance
            .updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    return local$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
            null
        ? CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
            local$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
            (e) => call(
              updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
                  e,
            ),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderDetailRecordPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
    updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId =>
      CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
        _res,
      );
}

const documentNodeMutationShippingOrderDetailRecordPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ShippingOrderDetailRecordPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailRecordId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'shippingDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'shippingQuantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'remarks')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(
              value: 'updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingOrderDetailRecordId'),
                      value: VariableNode(
                        name: NameNode(
                          value: 'transShippingOrderDetailRecordId',
                        ),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(
                        value: 'transShippingOrderDetailRecordPatch',
                      ),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transShippingOrderDetailId'),
                            value: VariableNode(
                              name: NameNode(
                                value: 'transShippingOrderDetailId',
                              ),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'shippingDate'),
                            value: VariableNode(
                              name: NameNode(value: 'shippingDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'shippingQuantity'),
                            value: VariableNode(
                              name: NameNode(value: 'shippingQuantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
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
                  name: NameNode(value: 'transShippingOrderDetailRecord'),
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
Mutation$ShippingOrderDetailRecordPageEdit
_parserFn$Mutation$ShippingOrderDetailRecordPageEdit(
  Map<String, dynamic> data,
) => Mutation$ShippingOrderDetailRecordPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ShippingOrderDetailRecordPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ShippingOrderDetailRecordPageEdit?,
    );

class Options$Mutation$ShippingOrderDetailRecordPageEdit
    extends
        graphql.MutationOptions<Mutation$ShippingOrderDetailRecordPageEdit> {
  Options$Mutation$ShippingOrderDetailRecordPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderDetailRecordPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailRecordPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderDetailRecordPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderDetailRecordPageEdit>?
    update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$ShippingOrderDetailRecordPageEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderDetailRecordPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderDetailRecordPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderDetailRecordPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ShippingOrderDetailRecordPageEdit
    extends
        graphql.WatchQueryOptions<Mutation$ShippingOrderDetailRecordPageEdit> {
  WatchOptions$Mutation$ShippingOrderDetailRecordPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderDetailRecordPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailRecordPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationShippingOrderDetailRecordPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ShippingOrderDetailRecordPageEdit,
       );
}

extension ClientExtension$Mutation$ShippingOrderDetailRecordPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ShippingOrderDetailRecordPageEdit>>
  mutate$ShippingOrderDetailRecordPageEdit(
    Options$Mutation$ShippingOrderDetailRecordPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ShippingOrderDetailRecordPageEdit>
  watchMutation$ShippingOrderDetailRecordPageEdit(
    WatchOptions$Mutation$ShippingOrderDetailRecordPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ShippingOrderDetailRecordPageEdit$HookResult {
  Mutation$ShippingOrderDetailRecordPageEdit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ShippingOrderDetailRecordPageEdit runMutation;

  final graphql.QueryResult<Mutation$ShippingOrderDetailRecordPageEdit> result;
}

Mutation$ShippingOrderDetailRecordPageEdit$HookResult
useMutation$ShippingOrderDetailRecordPageEdit([
  WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit(),
  );
  return Mutation$ShippingOrderDetailRecordPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ShippingOrderDetailRecordPageEdit>
useWatchMutation$ShippingOrderDetailRecordPageEdit(
  WatchOptions$Mutation$ShippingOrderDetailRecordPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit
    extends
        graphql.MutationOptions<Mutation$ShippingOrderDetailRecordPageEdit> {
  WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailRecordPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderDetailRecordPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderDetailRecordPageEdit>?
    update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$ShippingOrderDetailRecordPageEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderDetailRecordPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderDetailRecordPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderDetailRecordPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ShippingOrderDetailRecordPageEdit =
    graphql.MultiSourceResult<Mutation$ShippingOrderDetailRecordPageEdit>
    Function(
      Variables$Mutation$ShippingOrderDetailRecordPageEdit, {
      Object? optimisticResult,
      Mutation$ShippingOrderDetailRecordPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ShippingOrderDetailRecordPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ShippingOrderDetailRecordPageEdit,
      graphql.QueryResult<Mutation$ShippingOrderDetailRecordPageEdit>?,
    );

class Mutation$ShippingOrderDetailRecordPageEdit$Widget
    extends
        graphql_flutter.Mutation<Mutation$ShippingOrderDetailRecordPageEdit> {
  Mutation$ShippingOrderDetailRecordPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit? options,
    required Builder$Mutation$ShippingOrderDetailRecordPageEdit builder,
  }) : super(
         key: key,
         options:
             options ??
             WidgetOptions$Mutation$ShippingOrderDetailRecordPageEdit(),
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

class Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
  Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId({
    this.transShippingOrderDetailRecord,
    this.$__typename = 'UpdateTransShippingOrderDetailRecordPayload',
  });

  factory Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailRecord =
        json['transShippingOrderDetailRecord'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
      transShippingOrderDetailRecord: l$transShippingOrderDetailRecord == null
          ? null
          : Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord.fromJson(
              (l$transShippingOrderDetailRecord as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord?
  transShippingOrderDetailRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailRecord = transShippingOrderDetailRecord;
    _resultData['transShippingOrderDetailRecord'] =
        l$transShippingOrderDetailRecord?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailRecord = transShippingOrderDetailRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transShippingOrderDetailRecord, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailRecord = transShippingOrderDetailRecord;
    final lOther$transShippingOrderDetailRecord =
        other.transShippingOrderDetailRecord;
    if (l$transShippingOrderDetailRecord !=
        lOther$transShippingOrderDetailRecord) {
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

extension UtilityExtension$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
    on
        Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
    instance,
    TRes Function(
      Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  TRes call({
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord?
    transShippingOrderDetailRecord,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
    TRes
  >
  get transShippingOrderDetailRecord;
}

class _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId
  _instance;

  final TRes Function(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecord = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
      transShippingOrderDetailRecord:
          transShippingOrderDetailRecord == _undefined
          ? _instance.transShippingOrderDetailRecord
          : (transShippingOrderDetailRecord
                as Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
    TRes
  >
  get transShippingOrderDetailRecord {
    final local$transShippingOrderDetailRecord =
        _instance.transShippingOrderDetailRecord;
    return local$transShippingOrderDetailRecord == null
        ? CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
            local$transShippingOrderDetailRecord,
            (e) => call(transShippingOrderDetailRecord: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord?
    transShippingOrderDetailRecord,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
    TRes
  >
  get transShippingOrderDetailRecord =>
      CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord.stub(
        _res,
      );
}

class Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord {
  Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord({
    required this.transShippingOrderDetailRecordId,
    required this.transShippingOrderDetailId,
    required this.shippingDate,
    required this.shippingQuantity,
    this.remarks,
    this.$__typename = 'TransShippingOrderDetailRecord',
  });

  factory Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailRecordId =
        json['transShippingOrderDetailRecordId'];
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$shippingDate = json['shippingDate'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
      transShippingOrderDetailRecordId:
          (l$transShippingOrderDetailRecordId as String),
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      shippingDate: (l$shippingDate as String),
      shippingQuantity: (l$shippingQuantity as String),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailRecordId;

  final String transShippingOrderDetailId;

  final String shippingDate;

  final String shippingQuantity;

  final String? remarks;

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
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
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
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailRecordId,
      l$transShippingOrderDetailId,
      l$shippingDate,
      l$shippingQuantity,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord ||
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

extension UtilityExtension$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord
    on
        Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord {
  CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord
    instance,
    TRes Function(
      Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord;

  factory CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord;

  TRes call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord
  _instance;

  final TRes Function(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecordId = _undefined,
    Object? transShippingOrderDetailId = _undefined,
    Object? shippingDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
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
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailRecordPageEdit$updateTransShippingOrderDetailRecordByTransShippingOrderDetailRecordId$transShippingOrderDetailRecord(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
    String? $__typename,
  }) => _res;
}
