import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$VisiterPageEdit {
  factory Variables$Mutation$VisiterPageEdit({
    required String transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
  }) => Variables$Mutation$VisiterPageEdit._({
    r'transVisiterId': transVisiterId,
    if (transContainerId != null) r'transContainerId': transContainerId,
    if (status != null) r'status': status,
    if (quantity != null) r'quantity': quantity,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$VisiterPageEdit._(this._$data);

  factory Variables$Mutation$VisiterPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transVisiterId = data['transVisiterId'];
    result$data['transVisiterId'] = (l$transVisiterId as String);
    if (data.containsKey('transContainerId')) {
      final l$transContainerId = data['transContainerId'];
      result$data['transContainerId'] = (l$transContainerId as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$VisiterPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transVisiterId => (_$data['transVisiterId'] as String);

  String? get transContainerId => (_$data['transContainerId'] as String?);

  int? get status => (_$data['status'] as int?);

  String? get quantity => (_$data['quantity'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transVisiterId = transVisiterId;
    result$data['transVisiterId'] = l$transVisiterId;
    if (_$data.containsKey('transContainerId')) {
      final l$transContainerId = transContainerId;
      result$data['transContainerId'] = l$transContainerId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$VisiterPageEdit<
    Variables$Mutation$VisiterPageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$VisiterPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VisiterPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$transContainerId = transContainerId;
    final lOther$transContainerId = other.transContainerId;
    if (_$data.containsKey('transContainerId') !=
        other._$data.containsKey('transContainerId')) {
      return false;
    }
    if (l$transContainerId != lOther$transContainerId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
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
    final l$transVisiterId = transVisiterId;
    final l$transContainerId = transContainerId;
    final l$status = status;
    final l$quantity = quantity;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transVisiterId,
      _$data.containsKey('transContainerId') ? l$transContainerId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VisiterPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$VisiterPageEdit(
    Variables$Mutation$VisiterPageEdit instance,
    TRes Function(Variables$Mutation$VisiterPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$VisiterPageEdit;

  factory CopyWith$Variables$Mutation$VisiterPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VisiterPageEdit;

  TRes call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$VisiterPageEdit<TRes>
    implements CopyWith$Variables$Mutation$VisiterPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$VisiterPageEdit(this._instance, this._then);

  final Variables$Mutation$VisiterPageEdit _instance;

  final TRes Function(Variables$Mutation$VisiterPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transVisiterId = _undefined,
    Object? transContainerId = _undefined,
    Object? status = _undefined,
    Object? quantity = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$VisiterPageEdit._({
      ..._instance._$data,
      if (transVisiterId != _undefined && transVisiterId != null)
        'transVisiterId': (transVisiterId as String),
      if (transContainerId != _undefined)
        'transContainerId': (transContainerId as String?),
      if (status != _undefined) 'status': (status as int?),
      if (quantity != _undefined) 'quantity': (quantity as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$VisiterPageEdit<TRes>
    implements CopyWith$Variables$Mutation$VisiterPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VisiterPageEdit(this._res);

  TRes _res;

  call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
  }) => _res;
}

class Mutation$VisiterPageEdit {
  Mutation$VisiterPageEdit({
    this.updateTransVisiterByTransVisiterId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VisiterPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransVisiterByTransVisiterId =
        json['updateTransVisiterByTransVisiterId'];
    final l$$__typename = json['__typename'];
    return Mutation$VisiterPageEdit(
      updateTransVisiterByTransVisiterId:
          l$updateTransVisiterByTransVisiterId == null
          ? null
          : Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId.fromJson(
              (l$updateTransVisiterByTransVisiterId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId?
  updateTransVisiterByTransVisiterId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransVisiterByTransVisiterId =
        updateTransVisiterByTransVisiterId;
    _resultData['updateTransVisiterByTransVisiterId'] =
        l$updateTransVisiterByTransVisiterId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransVisiterByTransVisiterId =
        updateTransVisiterByTransVisiterId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransVisiterByTransVisiterId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VisiterPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransVisiterByTransVisiterId =
        updateTransVisiterByTransVisiterId;
    final lOther$updateTransVisiterByTransVisiterId =
        other.updateTransVisiterByTransVisiterId;
    if (l$updateTransVisiterByTransVisiterId !=
        lOther$updateTransVisiterByTransVisiterId) {
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

extension UtilityExtension$Mutation$VisiterPageEdit
    on Mutation$VisiterPageEdit {
  CopyWith$Mutation$VisiterPageEdit<Mutation$VisiterPageEdit> get copyWith =>
      CopyWith$Mutation$VisiterPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$VisiterPageEdit<TRes> {
  factory CopyWith$Mutation$VisiterPageEdit(
    Mutation$VisiterPageEdit instance,
    TRes Function(Mutation$VisiterPageEdit) then,
  ) = _CopyWithImpl$Mutation$VisiterPageEdit;

  factory CopyWith$Mutation$VisiterPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VisiterPageEdit;

  TRes call({
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId?
    updateTransVisiterByTransVisiterId,
    String? $__typename,
  });
  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<TRes>
  get updateTransVisiterByTransVisiterId;
}

class _CopyWithImpl$Mutation$VisiterPageEdit<TRes>
    implements CopyWith$Mutation$VisiterPageEdit<TRes> {
  _CopyWithImpl$Mutation$VisiterPageEdit(this._instance, this._then);

  final Mutation$VisiterPageEdit _instance;

  final TRes Function(Mutation$VisiterPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransVisiterByTransVisiterId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VisiterPageEdit(
      updateTransVisiterByTransVisiterId:
          updateTransVisiterByTransVisiterId == _undefined
          ? _instance.updateTransVisiterByTransVisiterId
          : (updateTransVisiterByTransVisiterId
                as Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<TRes>
  get updateTransVisiterByTransVisiterId {
    final local$updateTransVisiterByTransVisiterId =
        _instance.updateTransVisiterByTransVisiterId;
    return local$updateTransVisiterByTransVisiterId == null
        ? CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
            local$updateTransVisiterByTransVisiterId,
            (e) => call(updateTransVisiterByTransVisiterId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$VisiterPageEdit<TRes>
    implements CopyWith$Mutation$VisiterPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$VisiterPageEdit(this._res);

  TRes _res;

  call({
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId?
    updateTransVisiterByTransVisiterId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<TRes>
  get updateTransVisiterByTransVisiterId =>
      CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId.stub(
        _res,
      );
}

const documentNodeMutationVisiterPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'VisiterPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transVisiterId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transContainerId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'status')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'quantity')),
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
            name: NameNode(value: 'updateTransVisiterByTransVisiterId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transVisiterId'),
                      value: VariableNode(
                        name: NameNode(value: 'transVisiterId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transVisiterPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transContainerId'),
                            value: VariableNode(
                              name: NameNode(value: 'transContainerId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'status'),
                            value: VariableNode(
                              name: NameNode(value: 'status'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'quantity'),
                            value: VariableNode(
                              name: NameNode(value: 'quantity'),
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
                  name: NameNode(value: 'transVisiter'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transVisiterId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transContainerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
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
Mutation$VisiterPageEdit _parserFn$Mutation$VisiterPageEdit(
  Map<String, dynamic> data,
) => Mutation$VisiterPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$VisiterPageEdit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VisiterPageEdit?,
);

class Options$Mutation$VisiterPageEdit
    extends graphql.MutationOptions<Mutation$VisiterPageEdit> {
  Options$Mutation$VisiterPageEdit({
    String? operationName,
    required Variables$Mutation$VisiterPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VisiterPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VisiterPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$VisiterPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$VisiterPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationVisiterPageEdit,
         parserFn: _parserFn$Mutation$VisiterPageEdit,
       );

  final OnMutationCompleted$Mutation$VisiterPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$VisiterPageEdit
    extends graphql.WatchQueryOptions<Mutation$VisiterPageEdit> {
  WatchOptions$Mutation$VisiterPageEdit({
    String? operationName,
    required Variables$Mutation$VisiterPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VisiterPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationVisiterPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$VisiterPageEdit,
       );
}

extension ClientExtension$Mutation$VisiterPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VisiterPageEdit>> mutate$VisiterPageEdit(
    Options$Mutation$VisiterPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$VisiterPageEdit>
  watchMutation$VisiterPageEdit(
    WatchOptions$Mutation$VisiterPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$VisiterPageEdit$HookResult {
  Mutation$VisiterPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$VisiterPageEdit runMutation;

  final graphql.QueryResult<Mutation$VisiterPageEdit> result;
}

Mutation$VisiterPageEdit$HookResult useMutation$VisiterPageEdit([
  WidgetOptions$Mutation$VisiterPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$VisiterPageEdit(),
  );
  return Mutation$VisiterPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$VisiterPageEdit>
useWatchMutation$VisiterPageEdit(
  WatchOptions$Mutation$VisiterPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$VisiterPageEdit
    extends graphql.MutationOptions<Mutation$VisiterPageEdit> {
  WidgetOptions$Mutation$VisiterPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VisiterPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VisiterPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$VisiterPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$VisiterPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationVisiterPageEdit,
         parserFn: _parserFn$Mutation$VisiterPageEdit,
       );

  final OnMutationCompleted$Mutation$VisiterPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$VisiterPageEdit =
    graphql.MultiSourceResult<Mutation$VisiterPageEdit> Function(
      Variables$Mutation$VisiterPageEdit, {
      Object? optimisticResult,
      Mutation$VisiterPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$VisiterPageEdit = widgets.Widget Function(
  RunMutation$Mutation$VisiterPageEdit,
  graphql.QueryResult<Mutation$VisiterPageEdit>?,
);

class Mutation$VisiterPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$VisiterPageEdit> {
  Mutation$VisiterPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$VisiterPageEdit? options,
    required Builder$Mutation$VisiterPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$VisiterPageEdit(),
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

class Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId {
  Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId({
    this.transVisiter,
    this.$__typename = 'UpdateTransVisiterPayload',
  });

  factory Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transVisiter = json['transVisiter'];
    final l$$__typename = json['__typename'];
    return Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
      transVisiter: l$transVisiter == null
          ? null
          : Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter.fromJson(
              (l$transVisiter as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter?
  transVisiter;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transVisiter = transVisiter;
    _resultData['transVisiter'] = l$transVisiter?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transVisiter = transVisiter;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transVisiter, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiter = transVisiter;
    final lOther$transVisiter = other.transVisiter;
    if (l$transVisiter != lOther$transVisiter) {
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

extension UtilityExtension$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId
    on Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId {
  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId
  >
  get copyWith =>
      CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
  TRes
> {
  factory CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId instance,
    TRes Function(Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId)
    then,
  ) = _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId;

  factory CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId;

  TRes call({
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter?
    transVisiter,
    String? $__typename,
  });
  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
    TRes
  >
  get transVisiter;
}

class _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
  TRes
>
    implements
        CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
          TRes
        > {
  _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
    this._instance,
    this._then,
  );

  final Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId _instance;

  final TRes Function(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transVisiter = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
      transVisiter: transVisiter == _undefined
          ? _instance.transVisiter
          : (transVisiter
                as Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
    TRes
  >
  get transVisiter {
    final local$transVisiter = _instance.transVisiter;
    return local$transVisiter == null
        ? CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
            local$transVisiter,
            (e) => call(transVisiter: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
  TRes
>
    implements
        CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter?
    transVisiter,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
    TRes
  >
  get transVisiter =>
      CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter.stub(
        _res,
      );
}

class Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter {
  Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter({
    required this.transVisiterId,
    required this.transContainerId,
    this.status,
    this.quantity,
    this.remarks,
    this.$__typename = 'TransVisiter',
  });

  factory Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transVisiterId = json['transVisiterId'];
    final l$transContainerId = json['transContainerId'];
    final l$status = json['status'];
    final l$quantity = json['quantity'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
      transVisiterId: (l$transVisiterId as String),
      transContainerId: (l$transContainerId as String),
      status: (l$status as int?),
      quantity: (l$quantity as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transVisiterId;

  final String transContainerId;

  final int? status;

  final String? quantity;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transVisiterId = transVisiterId;
    _resultData['transVisiterId'] = l$transVisiterId;
    final l$transContainerId = transContainerId;
    _resultData['transContainerId'] = l$transContainerId;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transVisiterId = transVisiterId;
    final l$transContainerId = transContainerId;
    final l$status = status;
    final l$quantity = quantity;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transVisiterId,
      l$transContainerId,
      l$status,
      l$quantity,
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
            is! Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$transContainerId = transContainerId;
    final lOther$transContainerId = other.transContainerId;
    if (l$transContainerId != lOther$transContainerId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter
    on Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter {
  CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter
  >
  get copyWith =>
      CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
  TRes
> {
  factory CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter
    instance,
    TRes Function(
      Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter,
    )
    then,
  ) = _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter;

  factory CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter;

  TRes call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
  TRes
>
    implements
        CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
          TRes
        > {
  _CopyWithImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
    this._instance,
    this._then,
  );

  final Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter
  _instance;

  final TRes Function(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transVisiterId = _undefined,
    Object? transContainerId = _undefined,
    Object? status = _undefined,
    Object? quantity = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
      transVisiterId: transVisiterId == _undefined || transVisiterId == null
          ? _instance.transVisiterId
          : (transVisiterId as String),
      transContainerId:
          transContainerId == _undefined || transContainerId == null
          ? _instance.transContainerId
          : (transContainerId as String),
      status: status == _undefined ? _instance.status : (status as int?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
  TRes
>
    implements
        CopyWith$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VisiterPageEdit$updateTransVisiterByTransVisiterId$transVisiter(
    this._res,
  );

  TRes _res;

  call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
    String? $__typename,
  }) => _res;
}
