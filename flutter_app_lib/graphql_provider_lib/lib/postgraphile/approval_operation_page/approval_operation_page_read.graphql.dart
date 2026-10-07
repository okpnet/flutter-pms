import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ApprovalOperationPageRead {
  factory Variables$Query$ApprovalOperationPageRead({
    required int first,
    int? offset,
    Input$MstrApprovalPatternFilter? filter,
    List<Enum$MstrApprovalPatternsOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$ApprovalOperationPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$ApprovalOperationPageRead._(this._$data);

  factory Variables$Query$ApprovalOperationPageRead.fromJson(
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
          : Input$MstrApprovalPatternFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrApprovalPatternsOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$ApprovalOperationPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrApprovalPatternFilter? get filter =>
      (_$data['filter'] as Input$MstrApprovalPatternFilter?);

  List<Enum$MstrApprovalPatternsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrApprovalPatternsOrderBy>?);

  String get languageCodeId => (_$data['languageCodeId'] as String);

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
          ?.map((e) => toJson$Enum$MstrApprovalPatternsOrderBy(e))
          .toList();
    }
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ApprovalOperationPageRead<
    Variables$Query$ApprovalOperationPageRead
  >
  get copyWith =>
      CopyWith$Variables$Query$ApprovalOperationPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ApprovalOperationPageRead ||
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
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ApprovalOperationPageRead<TRes> {
  factory CopyWith$Variables$Query$ApprovalOperationPageRead(
    Variables$Query$ApprovalOperationPageRead instance,
    TRes Function(Variables$Query$ApprovalOperationPageRead) then,
  ) = _CopyWithImpl$Variables$Query$ApprovalOperationPageRead;

  factory CopyWith$Variables$Query$ApprovalOperationPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrApprovalPatternFilter? filter,
    List<Enum$MstrApprovalPatternsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$ApprovalOperationPageRead<TRes>
    implements CopyWith$Variables$Query$ApprovalOperationPageRead<TRes> {
  _CopyWithImpl$Variables$Query$ApprovalOperationPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$ApprovalOperationPageRead _instance;

  final TRes Function(Variables$Query$ApprovalOperationPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$ApprovalOperationPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined)
        'filter': (filter as Input$MstrApprovalPatternFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrApprovalPatternsOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRead<TRes>
    implements CopyWith$Variables$Query$ApprovalOperationPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ApprovalOperationPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrApprovalPatternFilter? filter,
    List<Enum$MstrApprovalPatternsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$ApprovalOperationPageRead {
  Query$ApprovalOperationPageRead({
    this.allMstrApprovalPatterns,
    this.$__typename = 'Query',
  });

  factory Query$ApprovalOperationPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrApprovalPatterns = json['allMstrApprovalPatterns'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead(
      allMstrApprovalPatterns: l$allMstrApprovalPatterns == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns.fromJson(
              (l$allMstrApprovalPatterns as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns?
  allMstrApprovalPatterns;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrApprovalPatterns = allMstrApprovalPatterns;
    _resultData['allMstrApprovalPatterns'] = l$allMstrApprovalPatterns
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrApprovalPatterns = allMstrApprovalPatterns;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrApprovalPatterns, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ApprovalOperationPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrApprovalPatterns = allMstrApprovalPatterns;
    final lOther$allMstrApprovalPatterns = other.allMstrApprovalPatterns;
    if (l$allMstrApprovalPatterns != lOther$allMstrApprovalPatterns) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead
    on Query$ApprovalOperationPageRead {
  CopyWith$Query$ApprovalOperationPageRead<Query$ApprovalOperationPageRead>
  get copyWith => CopyWith$Query$ApprovalOperationPageRead(this, (i) => i);
}

abstract class CopyWith$Query$ApprovalOperationPageRead<TRes> {
  factory CopyWith$Query$ApprovalOperationPageRead(
    Query$ApprovalOperationPageRead instance,
    TRes Function(Query$ApprovalOperationPageRead) then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead;

  factory CopyWith$Query$ApprovalOperationPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ApprovalOperationPageRead;

  TRes call({
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns?
    allMstrApprovalPatterns,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<TRes>
  get allMstrApprovalPatterns;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead<TRes>
    implements CopyWith$Query$ApprovalOperationPageRead<TRes> {
  _CopyWithImpl$Query$ApprovalOperationPageRead(this._instance, this._then);

  final Query$ApprovalOperationPageRead _instance;

  final TRes Function(Query$ApprovalOperationPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrApprovalPatterns = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead(
      allMstrApprovalPatterns: allMstrApprovalPatterns == _undefined
          ? _instance.allMstrApprovalPatterns
          : (allMstrApprovalPatterns
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<TRes>
  get allMstrApprovalPatterns {
    final local$allMstrApprovalPatterns = _instance.allMstrApprovalPatterns;
    return local$allMstrApprovalPatterns == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
            local$allMstrApprovalPatterns,
            (e) => call(allMstrApprovalPatterns: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead<TRes>
    implements CopyWith$Query$ApprovalOperationPageRead<TRes> {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead(this._res);

  TRes _res;

  call({
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns?
    allMstrApprovalPatterns,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<TRes>
  get allMstrApprovalPatterns =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns.stub(
        _res,
      );
}

const documentNodeQueryApprovalOperationPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ApprovalOperationPageRead'),
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
            name: NameNode(value: 'MstrApprovalPatternFilter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrApprovalPatternsOrderBy'),
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
          variable: VariableNode(name: NameNode(value: 'languageCodeId')),
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
            name: NameNode(value: 'allMstrApprovalPatterns'),
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
                        name: NameNode(value: 'mstrApprovalPatternId'),
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
                        name: NameNode(value: 'sharedAppellationByNames'),
                        alias: NameNode(value: 'labels'),
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
                                value:
                                    'sharedDictionaryBySharedDictionaryNameId',
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'value'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
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
                                                  value: 'dictionaryValue',
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'value'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
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
                                                  value: 'dictionaryValue',
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
                                    'sharedDictionaryBySharedDictionaryNicknameId',
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'value'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
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
                                                  value: 'dictionaryValue',
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
                              'mstrApprovalPatternDetailsByMstrApprovalPatternId',
                        ),
                        alias: NameNode(value: 'pattern_detail'),
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
                                      value: 'mstrApprovalPatternDetailId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrApprovalId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'mstrApprovalPatternId',
                                    ),
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
                                      value: 'mstrApprovalByMstrApprovalId',
                                    ),
                                    alias: NameNode(value: 'approval'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrApprovalId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'infoDepartmentId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'infoPositionId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'priority'),
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
                                            value: 'sharedAppellationByNames',
                                          ),
                                          alias: NameNode(value: 'labels'),
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNameId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNicknameId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                            value:
                                                'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                                          ),
                                          alias: NameNode(value: 'update_user'),
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'historyId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'infoStaffId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'infoCompanyId',
                                                ),
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
                                                name: NameNode(
                                                  value: 'privatePhone',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedAppellationByNames',
                                                ),
                                                alias: NameNode(value: 'name'),
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedAppellationsId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
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
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryId',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryValuesBySharedDictionaryId',
                                                            ),
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'sharedLanguageCodeId',
                                                                      ),
                                                                      value: VariableNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'languageCodeId',
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
                                                                  name: NameNode(
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                        value:
                                                            'sharedDictionaryBySharedDictionaryPronunciationId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryId',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryValuesBySharedDictionaryId',
                                                            ),
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'sharedLanguageCodeId',
                                                                      ),
                                                                      value: VariableNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'languageCodeId',
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
                                                                  name: NameNode(
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                        value:
                                                            'sharedDictionaryBySharedDictionaryNicknameId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryId',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'sharedDictionaryValuesBySharedDictionaryId',
                                                            ),
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'sharedLanguageCodeId',
                                                                      ),
                                                                      value: VariableNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'languageCodeId',
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
                                                                  name: NameNode(
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                      value:
                                          'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
                                          name: NameNode(
                                            value: 'infoCompanyId',
                                          ),
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
                                          name: NameNode(
                                            value: 'sharedAppellationByNames',
                                          ),
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNameId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNicknameId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'languageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
Query$ApprovalOperationPageRead _parserFn$Query$ApprovalOperationPageRead(
  Map<String, dynamic> data,
) => Query$ApprovalOperationPageRead.fromJson(data);
typedef OnQueryComplete$Query$ApprovalOperationPageRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ApprovalOperationPageRead?,
    );

class Options$Query$ApprovalOperationPageRead
    extends graphql.QueryOptions<Query$ApprovalOperationPageRead> {
  Options$Query$ApprovalOperationPageRead({
    String? operationName,
    required Variables$Query$ApprovalOperationPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApprovalOperationPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ApprovalOperationPageRead? onComplete,
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
                     : _parserFn$Query$ApprovalOperationPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryApprovalOperationPageRead,
         parserFn: _parserFn$Query$ApprovalOperationPageRead,
       );

  final OnQueryComplete$Query$ApprovalOperationPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ApprovalOperationPageRead
    extends graphql.WatchQueryOptions<Query$ApprovalOperationPageRead> {
  WatchOptions$Query$ApprovalOperationPageRead({
    String? operationName,
    required Variables$Query$ApprovalOperationPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApprovalOperationPageRead? typedOptimisticResult,
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
         document: documentNodeQueryApprovalOperationPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ApprovalOperationPageRead,
       );
}

class FetchMoreOptions$Query$ApprovalOperationPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ApprovalOperationPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ApprovalOperationPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryApprovalOperationPageRead,
       );
}

extension ClientExtension$Query$ApprovalOperationPageRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ApprovalOperationPageRead>>
  query$ApprovalOperationPageRead(
    Options$Query$ApprovalOperationPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ApprovalOperationPageRead>
  watchQuery$ApprovalOperationPageRead(
    WatchOptions$Query$ApprovalOperationPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$ApprovalOperationPageRead({
    required Query$ApprovalOperationPageRead data,
    required Variables$Query$ApprovalOperationPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryApprovalOperationPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ApprovalOperationPageRead? readQuery$ApprovalOperationPageRead({
    required Variables$Query$ApprovalOperationPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryApprovalOperationPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ApprovalOperationPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ApprovalOperationPageRead>
useQuery$ApprovalOperationPageRead(
  Options$Query$ApprovalOperationPageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ApprovalOperationPageRead>
useWatchQuery$ApprovalOperationPageRead(
  WatchOptions$Query$ApprovalOperationPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ApprovalOperationPageRead$Widget
    extends graphql_flutter.Query<Query$ApprovalOperationPageRead> {
  Query$ApprovalOperationPageRead$Widget({
    widgets.Key? key,
    required Options$Query$ApprovalOperationPageRead options,
    required graphql_flutter.QueryBuilder<Query$ApprovalOperationPageRead>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrApprovalPatternsConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo
  pageInfo;

  final List<Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?>
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
    if (other is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns instance,
    TRes Function(Query$ApprovalOperationPageRead$allMstrApprovalPatterns) then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns;

  TRes call({
    int? totalCount,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo? pageInfo,
    List<Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<TRes> {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns _instance;

  final TRes Function(Query$ApprovalOperationPageRead$allMstrApprovalPatterns)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?>
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns<TRes> {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo? pageInfo,
    List<Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
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

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes({
    required this.mstrApprovalPatternId,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    required this.pattern_detail,
    this.update_user,
    this.$__typename = 'MstrApprovalPattern',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$pattern_detail = json['pattern_detail'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      pattern_detail:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail.fromJson(
            (l$pattern_detail as Map<String, dynamic>),
          ),
      update_user: l$update_user == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternId;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels?
  labels;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail
  pattern_detail;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$pattern_detail = pattern_detail;
    _resultData['pattern_detail'] = l$pattern_detail.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$pattern_detail = pattern_detail;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternId,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$pattern_detail,
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$pattern_detail = pattern_detail;
    final lOther$pattern_detail = other.pattern_detail;
    if (l$pattern_detail != lOther$pattern_detail) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes instance,
    TRes Function(Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes)
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes;

  TRes call({
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels?
    labels,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail?
    pattern_detail,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
    TRes
  >
  get pattern_detail;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternId = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? pattern_detail = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels?),
      pattern_detail: pattern_detail == _undefined || pattern_detail == null
          ? _instance.pattern_detail
          : (pattern_detail
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
    TRes
  >
  get pattern_detail {
    final local$pattern_detail = _instance.pattern_detail;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
      local$pattern_detail,
      (e) => call(pattern_detail: e),
    );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels?
    labels,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail?
    pattern_detail,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
    TRes
  >
  get pattern_detail =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels.fromJson(
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
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels,
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
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrApprovalPatternDetailsConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo
  pageInfo;

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail;

  TRes call({
    int? totalCount,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo?
    pageInfo,
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo?
    pageInfo,
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
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

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes({
    required this.mstrApprovalPatternDetailId,
    required this.mstrApprovalId,
    required this.mstrApprovalPatternId,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.approval,
    this.update_user,
    this.$__typename = 'MstrApprovalPatternDetail',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternDetailId = json['mstrApprovalPatternDetailId'];
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$approval = json['approval'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
      mstrApprovalPatternDetailId: (l$mstrApprovalPatternDetailId as String),
      mstrApprovalId: (l$mstrApprovalId as String),
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      approval: l$approval == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval.fromJson(
              (l$approval as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternDetailId;

  final String mstrApprovalId;

  final String mstrApprovalPatternId;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval?
  approval;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    _resultData['mstrApprovalPatternDetailId'] = l$mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$approval = approval;
    _resultData['approval'] = l$approval?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$approval = approval;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternDetailId,
      l$mstrApprovalId,
      l$mstrApprovalPatternId,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$approval,
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final lOther$mstrApprovalPatternDetailId =
        other.mstrApprovalPatternDetailId;
    if (l$mstrApprovalPatternDetailId != lOther$mstrApprovalPatternDetailId) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$approval = approval;
    final lOther$approval = other.approval;
    if (l$approval != lOther$approval) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes;

  TRes call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval?
    approval,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
    TRes
  >
  get approval;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternDetailId = _undefined,
    Object? mstrApprovalId = _undefined,
    Object? mstrApprovalPatternId = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? approval = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
      mstrApprovalPatternDetailId:
          mstrApprovalPatternDetailId == _undefined ||
              mstrApprovalPatternDetailId == null
          ? _instance.mstrApprovalPatternDetailId
          : (mstrApprovalPatternDetailId as String),
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      approval: approval == _undefined
          ? _instance.approval
          : (approval
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
    TRes
  >
  get approval {
    final local$approval = _instance.approval;
    return local$approval == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
            local$approval,
            (e) => call(approval: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval?
    approval,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
    TRes
  >
  get approval =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval({
    required this.mstrApprovalId,
    this.infoDepartmentId,
    required this.infoPositionId,
    this.priority,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrApproval',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$infoPositionId = json['infoPositionId'];
    final l$priority = json['priority'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
      mstrApprovalId: (l$mstrApprovalId as String),
      infoDepartmentId: (l$infoDepartmentId as String?),
      infoPositionId: (l$infoPositionId as String),
      priority: (l$priority as int?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalId;

  final String? infoDepartmentId;

  final String infoPositionId;

  final int? priority;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels?
  labels;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    _resultData['infoPositionId'] = l$infoPositionId;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalId = mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    final l$priority = priority;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalId,
      l$infoDepartmentId,
      l$infoPositionId,
      l$priority,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval;

  TRes call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels?
    labels,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalId = _undefined,
    Object? infoDepartmentId = _undefined,
    Object? infoPositionId = _undefined,
    Object? priority = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      infoDepartmentId: infoDepartmentId == _undefined
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String?),
      infoPositionId: infoPositionId == _undefined || infoPositionId == null
          ? _instance.infoPositionId
          : (infoPositionId as String),
      priority: priority == _undefined
          ? _instance.priority
          : (priority as int?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels?
    labels,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels.fromJson(
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
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels,
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
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name.fromJson(
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
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name,
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
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$approval$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name.fromJson(
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
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name,
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
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$pattern_detail$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name.fromJson(
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
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name
    on Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name,
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
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
