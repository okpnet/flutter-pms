import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$StaffCapabilityPageRead {
  factory Variables$Query$StaffCapabilityPageRead({
    required int first,
    int? offset,
    Input$InfoStaffFilter? filter,
    List<Enum$InfoStaffsOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$StaffCapabilityPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$StaffCapabilityPageRead._(this._$data);

  factory Variables$Query$StaffCapabilityPageRead.fromJson(
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
          : Input$InfoStaffFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$InfoStaffsOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$StaffCapabilityPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$InfoStaffFilter? get filter =>
      (_$data['filter'] as Input$InfoStaffFilter?);

  List<Enum$InfoStaffsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$InfoStaffsOrderBy>?);

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
          ?.map((e) => toJson$Enum$InfoStaffsOrderBy(e))
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

  CopyWith$Variables$Query$StaffCapabilityPageRead<
    Variables$Query$StaffCapabilityPageRead
  >
  get copyWith =>
      CopyWith$Variables$Query$StaffCapabilityPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StaffCapabilityPageRead ||
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

abstract class CopyWith$Variables$Query$StaffCapabilityPageRead<TRes> {
  factory CopyWith$Variables$Query$StaffCapabilityPageRead(
    Variables$Query$StaffCapabilityPageRead instance,
    TRes Function(Variables$Query$StaffCapabilityPageRead) then,
  ) = _CopyWithImpl$Variables$Query$StaffCapabilityPageRead;

  factory CopyWith$Variables$Query$StaffCapabilityPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StaffCapabilityPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$InfoStaffFilter? filter,
    List<Enum$InfoStaffsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$StaffCapabilityPageRead<TRes>
    implements CopyWith$Variables$Query$StaffCapabilityPageRead<TRes> {
  _CopyWithImpl$Variables$Query$StaffCapabilityPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$StaffCapabilityPageRead _instance;

  final TRes Function(Variables$Query$StaffCapabilityPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$StaffCapabilityPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined) 'filter': (filter as Input$InfoStaffFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$InfoStaffsOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$StaffCapabilityPageRead<TRes>
    implements CopyWith$Variables$Query$StaffCapabilityPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$StaffCapabilityPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$InfoStaffFilter? filter,
    List<Enum$InfoStaffsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$StaffCapabilityPageRead {
  Query$StaffCapabilityPageRead({
    this.allInfoStaffs,
    this.$__typename = 'Query',
  });

  factory Query$StaffCapabilityPageRead.fromJson(Map<String, dynamic> json) {
    final l$allInfoStaffs = json['allInfoStaffs'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead(
      allInfoStaffs: l$allInfoStaffs == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs.fromJson(
              (l$allInfoStaffs as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StaffCapabilityPageRead$allInfoStaffs? allInfoStaffs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allInfoStaffs = allInfoStaffs;
    _resultData['allInfoStaffs'] = l$allInfoStaffs?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allInfoStaffs = allInfoStaffs;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allInfoStaffs, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffCapabilityPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allInfoStaffs = allInfoStaffs;
    final lOther$allInfoStaffs = other.allInfoStaffs;
    if (l$allInfoStaffs != lOther$allInfoStaffs) {
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

extension UtilityExtension$Query$StaffCapabilityPageRead
    on Query$StaffCapabilityPageRead {
  CopyWith$Query$StaffCapabilityPageRead<Query$StaffCapabilityPageRead>
  get copyWith => CopyWith$Query$StaffCapabilityPageRead(this, (i) => i);
}

abstract class CopyWith$Query$StaffCapabilityPageRead<TRes> {
  factory CopyWith$Query$StaffCapabilityPageRead(
    Query$StaffCapabilityPageRead instance,
    TRes Function(Query$StaffCapabilityPageRead) then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead;

  factory CopyWith$Query$StaffCapabilityPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffCapabilityPageRead;

  TRes call({
    Query$StaffCapabilityPageRead$allInfoStaffs? allInfoStaffs,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes> get allInfoStaffs;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead<TRes>
    implements CopyWith$Query$StaffCapabilityPageRead<TRes> {
  _CopyWithImpl$Query$StaffCapabilityPageRead(this._instance, this._then);

  final Query$StaffCapabilityPageRead _instance;

  final TRes Function(Query$StaffCapabilityPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allInfoStaffs = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead(
      allInfoStaffs: allInfoStaffs == _undefined
          ? _instance.allInfoStaffs
          : (allInfoStaffs as Query$StaffCapabilityPageRead$allInfoStaffs?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes> get allInfoStaffs {
    final local$allInfoStaffs = _instance.allInfoStaffs;
    return local$allInfoStaffs == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs(
            local$allInfoStaffs,
            (e) => call(allInfoStaffs: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead<TRes>
    implements CopyWith$Query$StaffCapabilityPageRead<TRes> {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead(this._res);

  TRes _res;

  call({
    Query$StaffCapabilityPageRead$allInfoStaffs? allInfoStaffs,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes>
  get allInfoStaffs =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs.stub(_res);
}

const documentNodeQueryStaffCapabilityPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'StaffCapabilityPageRead'),
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
            name: NameNode(value: 'InfoStaffFilter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'InfoStaffsOrderBy'),
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
            name: NameNode(value: 'allInfoStaffs'),
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
                        name: NameNode(value: 'privatePhone'),
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
                          value: 'mstrStaffCapabilitiesByInfoStaffId',
                        ),
                        alias: NameNode(value: 'capabilitys'),
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
                                      value: 'mstrStaffCapabilityId',
                                    ),
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
                                    name: NameNode(value: 'value'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'stop'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'mstrCapabilityByMstrCapabilityId',
                                    ),
                                    alias: NameNode(value: 'capability'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrCapabilityId',
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
                                          name: NameNode(value: 'detail'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'referenceValue',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'max'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'min'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'step'),
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
Query$StaffCapabilityPageRead _parserFn$Query$StaffCapabilityPageRead(
  Map<String, dynamic> data,
) => Query$StaffCapabilityPageRead.fromJson(data);
typedef OnQueryComplete$Query$StaffCapabilityPageRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$StaffCapabilityPageRead?,
    );

class Options$Query$StaffCapabilityPageRead
    extends graphql.QueryOptions<Query$StaffCapabilityPageRead> {
  Options$Query$StaffCapabilityPageRead({
    String? operationName,
    required Variables$Query$StaffCapabilityPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffCapabilityPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StaffCapabilityPageRead? onComplete,
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
                     : _parserFn$Query$StaffCapabilityPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryStaffCapabilityPageRead,
         parserFn: _parserFn$Query$StaffCapabilityPageRead,
       );

  final OnQueryComplete$Query$StaffCapabilityPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$StaffCapabilityPageRead
    extends graphql.WatchQueryOptions<Query$StaffCapabilityPageRead> {
  WatchOptions$Query$StaffCapabilityPageRead({
    String? operationName,
    required Variables$Query$StaffCapabilityPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffCapabilityPageRead? typedOptimisticResult,
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
         document: documentNodeQueryStaffCapabilityPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$StaffCapabilityPageRead,
       );
}

class FetchMoreOptions$Query$StaffCapabilityPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StaffCapabilityPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StaffCapabilityPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryStaffCapabilityPageRead,
       );
}

extension ClientExtension$Query$StaffCapabilityPageRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StaffCapabilityPageRead>>
  query$StaffCapabilityPageRead(
    Options$Query$StaffCapabilityPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$StaffCapabilityPageRead>
  watchQuery$StaffCapabilityPageRead(
    WatchOptions$Query$StaffCapabilityPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$StaffCapabilityPageRead({
    required Query$StaffCapabilityPageRead data,
    required Variables$Query$StaffCapabilityPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryStaffCapabilityPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$StaffCapabilityPageRead? readQuery$StaffCapabilityPageRead({
    required Variables$Query$StaffCapabilityPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryStaffCapabilityPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$StaffCapabilityPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StaffCapabilityPageRead>
useQuery$StaffCapabilityPageRead(
  Options$Query$StaffCapabilityPageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$StaffCapabilityPageRead>
useWatchQuery$StaffCapabilityPageRead(
  WatchOptions$Query$StaffCapabilityPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$StaffCapabilityPageRead$Widget
    extends graphql_flutter.Query<Query$StaffCapabilityPageRead> {
  Query$StaffCapabilityPageRead$Widget({
    widgets.Key? key,
    required Options$Query$StaffCapabilityPageRead options,
    required graphql_flutter.QueryBuilder<Query$StaffCapabilityPageRead>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$StaffCapabilityPageRead$allInfoStaffs {
  Query$StaffCapabilityPageRead$allInfoStaffs({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'InfoStaffsConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs(
      totalCount: (l$totalCount as int),
      pageInfo: Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo pageInfo;

  final List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?> nodes;

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
    if (other is! Query$StaffCapabilityPageRead$allInfoStaffs ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs
    on Query$StaffCapabilityPageRead$allInfoStaffs {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<
    Query$StaffCapabilityPageRead$allInfoStaffs
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs(this, (i) => i);
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs(
    Query$StaffCapabilityPageRead$allInfoStaffs instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs) then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs;

  TRes call({
    int? totalCount,
    Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo? pageInfo,
    List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?> Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs<TRes>
    implements CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes> {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs _instance;

  final TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?> Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs<TRes>
    implements CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs<TRes> {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo? pageInfo,
    List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo {
  Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
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
    if (other is! Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo
    on Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<
    Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo
  >
  get copyWith => CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
    Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo) then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes> {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo _instance;

  final TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
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

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo<TRes> {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes({
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.privatePhone,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    required this.capabilitys,
    this.update_user,
    this.$__typename = 'InfoStaff',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$privatePhone = json['privatePhone'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$capabilitys = json['capabilitys'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      privatePhone: (l$privatePhone as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      capabilitys:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys.fromJson(
            (l$capabilitys as Map<String, dynamic>),
          ),
      update_user: l$update_user == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? privatePhone;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels? labels;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys
  capabilitys;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
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
    final l$capabilitys = capabilitys;
    _resultData['capabilitys'] = l$capabilitys.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$privatePhone = privatePhone;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$capabilitys = capabilitys;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$privatePhone,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$capabilitys,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes ||
        runtimeType != other.runtimeType) {
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
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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
    final l$capabilitys = capabilitys;
    final lOther$capabilitys = other.capabilitys;
    if (l$capabilitys != lOther$capabilitys) {
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes
  >
  get copyWith => CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes) then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes;

  TRes call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels? labels,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys? capabilitys,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<TRes>
  get labels;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<TRes>
  get capabilitys;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<TRes>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<TRes> {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes _instance;

  final TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? privatePhone = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? capabilitys = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels?),
      capabilitys: capabilitys == _undefined || capabilitys == null
          ? _instance.capabilitys
          : (capabilitys
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<TRes>
  get capabilitys {
    final local$capabilitys = _instance.capabilitys;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
      local$capabilitys,
      (e) => call(capabilitys: e),
    );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<TRes>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes<TRes> {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels? labels,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys? capabilitys,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<TRes>
  get labels =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<TRes>
  get capabilitys =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels)
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels _instance;

  final TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStaffCapabilitiesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo
  pageInfo;

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys)
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys;

  TRes call({
    int? totalCount,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo?
    pageInfo,
    List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?>?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo?
    pageInfo,
    List<Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes?>?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
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

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes({
    required this.mstrStaffCapabilityId,
    required this.infoStaffId,
    this.value,
    this.stop,
    this.capability,
    this.$__typename = 'MstrStaffCapability',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffCapabilityId = json['mstrStaffCapabilityId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$value = json['value'];
    final l$stop = json['stop'];
    final l$capability = json['capability'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
      mstrStaffCapabilityId: (l$mstrStaffCapabilityId as String),
      infoStaffId: (l$infoStaffId as String),
      value: (l$value as String?),
      stop: (l$stop as bool?),
      capability: l$capability == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability.fromJson(
              (l$capability as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffCapabilityId;

  final String infoStaffId;

  final String? value;

  final bool? stop;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability?
  capability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    _resultData['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$stop = stop;
    _resultData['stop'] = l$stop;
    final l$capability = capability;
    _resultData['capability'] = l$capability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$value = value;
    final l$stop = stop;
    final l$capability = capability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      l$value,
      l$stop,
      l$capability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final lOther$mstrStaffCapabilityId = other.mstrStaffCapabilityId;
    if (l$mstrStaffCapabilityId != lOther$mstrStaffCapabilityId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
      return false;
    }
    final l$capability = capability;
    final lOther$capability = other.capability;
    if (l$capability != lOther$capability) {
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? value,
    bool? stop,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability?
    capability,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
    TRes
  >
  get capability;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? value = _undefined,
    Object? stop = _undefined,
    Object? capability = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
      mstrStaffCapabilityId:
          mstrStaffCapabilityId == _undefined || mstrStaffCapabilityId == null
          ? _instance.mstrStaffCapabilityId
          : (mstrStaffCapabilityId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      value: value == _undefined ? _instance.value : (value as String?),
      stop: stop == _undefined ? _instance.stop : (stop as bool?),
      capability: capability == _undefined
          ? _instance.capability
          : (capability
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
    TRes
  >
  get capability {
    final local$capability = _instance.capability;
    return local$capability == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
            local$capability,
            (e) => call(capability: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? value,
    bool? stop,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability?
    capability,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
    TRes
  >
  get capability =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability({
    required this.mstrCapabilityId,
    required this.code,
    this.detail,
    required this.referenceValue,
    this.max,
    this.min,
    this.step,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrCapability',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$referenceValue = json['referenceValue'];
    final l$max = json['max'];
    final l$min = json['min'];
    final l$step = json['step'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
      mstrCapabilityId: (l$mstrCapabilityId as String),
      code: (l$code as String),
      detail: (l$detail as String?),
      referenceValue: (l$referenceValue as String),
      max: (l$max as String?),
      min: (l$min as String?),
      step: (l$step as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrCapabilityId;

  final String code;

  final String? detail;

  final String referenceValue;

  final String? max;

  final String? min;

  final String? step;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels?
  labels;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$referenceValue = referenceValue;
    _resultData['referenceValue'] = l$referenceValue;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$step = step;
    _resultData['step'] = l$step;
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$code = code;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$code,
      l$detail,
      l$referenceValue,
      l$max,
      l$min,
      l$step,
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$referenceValue = referenceValue;
    final lOther$referenceValue = other.referenceValue;
    if (l$referenceValue != lOther$referenceValue) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (l$step != lOther$step) {
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability;

  TRes call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels?
    labels,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
    TRes
  >
  get labels;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? referenceValue = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? step = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
      mstrCapabilityId:
          mstrCapabilityId == _undefined || mstrCapabilityId == null
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      referenceValue: referenceValue == _undefined || referenceValue == null
          ? _instance.referenceValue
          : (referenceValue as String),
      max: max == _undefined ? _instance.max : (max as String?),
      min: min == _undefined ? _instance.min : (min as String?),
      step: step == _undefined ? _instance.step : (step as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability(
    this._res,
  );

  TRes _res;

  call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels?
    labels,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels,
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user({
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

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
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
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name.fromJson(
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

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user,
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
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
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user(
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name,
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$capabilitys$nodes$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user({
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

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
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
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name.fromJson(
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

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user instance,
    TRes Function(Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user)
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name? name,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user,
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
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
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user(
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name.fromJson(
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
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name
    on Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name,
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
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityPageRead$allInfoStaffs$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
