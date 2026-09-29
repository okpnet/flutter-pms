import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OfficePageRead {
  factory Variables$Query$OfficePageRead({
    required int first,
    int? offset,
    Input$InfoOfficeCondition? condition,
    List<Enum$InfoOfficesOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$OfficePageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$OfficePageRead._(this._$data);

  factory Variables$Query$OfficePageRead.fromJson(Map<String, dynamic> data) {
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
          : Input$InfoOfficeCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$InfoOfficesOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$OfficePageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$InfoOfficeCondition? get condition =>
      (_$data['condition'] as Input$InfoOfficeCondition?);

  List<Enum$InfoOfficesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$InfoOfficesOrderBy>?);

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
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$InfoOfficesOrderBy(e))
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

  CopyWith$Variables$Query$OfficePageRead<Variables$Query$OfficePageRead>
  get copyWith => CopyWith$Variables$Query$OfficePageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OfficePageRead ||
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
    final l$condition = condition;
    final l$orderBy = orderBy;
    final l$languageCodeId = languageCodeId;
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
      l$languageCodeId,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$OfficePageRead<TRes> {
  factory CopyWith$Variables$Query$OfficePageRead(
    Variables$Query$OfficePageRead instance,
    TRes Function(Variables$Query$OfficePageRead) then,
  ) = _CopyWithImpl$Variables$Query$OfficePageRead;

  factory CopyWith$Variables$Query$OfficePageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OfficePageRead;

  TRes call({
    int? first,
    int? offset,
    Input$InfoOfficeCondition? condition,
    List<Enum$InfoOfficesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$OfficePageRead<TRes>
    implements CopyWith$Variables$Query$OfficePageRead<TRes> {
  _CopyWithImpl$Variables$Query$OfficePageRead(this._instance, this._then);

  final Variables$Query$OfficePageRead _instance;

  final TRes Function(Variables$Query$OfficePageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$OfficePageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$InfoOfficeCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$InfoOfficesOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OfficePageRead<TRes>
    implements CopyWith$Variables$Query$OfficePageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$OfficePageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$InfoOfficeCondition? condition,
    List<Enum$InfoOfficesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$OfficePageRead {
  Query$OfficePageRead({this.allInfoOffices, this.$__typename = 'Query'});

  factory Query$OfficePageRead.fromJson(Map<String, dynamic> json) {
    final l$allInfoOffices = json['allInfoOffices'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead(
      allInfoOffices: l$allInfoOffices == null
          ? null
          : Query$OfficePageRead$allInfoOffices.fromJson(
              (l$allInfoOffices as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OfficePageRead$allInfoOffices? allInfoOffices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allInfoOffices = allInfoOffices;
    _resultData['allInfoOffices'] = l$allInfoOffices?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allInfoOffices = allInfoOffices;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allInfoOffices, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OfficePageRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allInfoOffices = allInfoOffices;
    final lOther$allInfoOffices = other.allInfoOffices;
    if (l$allInfoOffices != lOther$allInfoOffices) {
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

extension UtilityExtension$Query$OfficePageRead on Query$OfficePageRead {
  CopyWith$Query$OfficePageRead<Query$OfficePageRead> get copyWith =>
      CopyWith$Query$OfficePageRead(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRead<TRes> {
  factory CopyWith$Query$OfficePageRead(
    Query$OfficePageRead instance,
    TRes Function(Query$OfficePageRead) then,
  ) = _CopyWithImpl$Query$OfficePageRead;

  factory CopyWith$Query$OfficePageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRead;

  TRes call({
    Query$OfficePageRead$allInfoOffices? allInfoOffices,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices<TRes> get allInfoOffices;
}

class _CopyWithImpl$Query$OfficePageRead<TRes>
    implements CopyWith$Query$OfficePageRead<TRes> {
  _CopyWithImpl$Query$OfficePageRead(this._instance, this._then);

  final Query$OfficePageRead _instance;

  final TRes Function(Query$OfficePageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allInfoOffices = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead(
      allInfoOffices: allInfoOffices == _undefined
          ? _instance.allInfoOffices
          : (allInfoOffices as Query$OfficePageRead$allInfoOffices?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices<TRes> get allInfoOffices {
    final local$allInfoOffices = _instance.allInfoOffices;
    return local$allInfoOffices == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices.stub(_then(_instance))
        : CopyWith$Query$OfficePageRead$allInfoOffices(
            local$allInfoOffices,
            (e) => call(allInfoOffices: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead<TRes>
    implements CopyWith$Query$OfficePageRead<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead(this._res);

  TRes _res;

  call({
    Query$OfficePageRead$allInfoOffices? allInfoOffices,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices<TRes> get allInfoOffices =>
      CopyWith$Query$OfficePageRead$allInfoOffices.stub(_res);
}

const documentNodeQueryOfficePageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OfficePageRead'),
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
            name: NameNode(value: 'InfoOfficeCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'InfoOfficesOrderBy'),
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
            name: NameNode(value: 'allInfoOffices'),
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
                        name: NameNode(value: 'infoOfficeId'),
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
                        name: NameNode(value: 'infoAddressByInfoAddressId'),
                        alias: NameNode(value: 'address'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'infoAddressId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'iso31663'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'zipCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedAppellationByAddress1',
                              ),
                              alias: NameNode(value: 'address1'),
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
                              name: NameNode(
                                value: 'sharedAppellationByAddress2',
                              ),
                              alias: NameNode(value: 'address2'),
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
                              name: NameNode(value: 'sharedAppellationByBill'),
                              alias: NameNode(value: 'billName'),
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
                              name: NameNode(value: 'phone'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'faxNumber'),
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
Query$OfficePageRead _parserFn$Query$OfficePageRead(
  Map<String, dynamic> data,
) => Query$OfficePageRead.fromJson(data);
typedef OnQueryComplete$Query$OfficePageRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OfficePageRead?);

class Options$Query$OfficePageRead
    extends graphql.QueryOptions<Query$OfficePageRead> {
  Options$Query$OfficePageRead({
    String? operationName,
    required Variables$Query$OfficePageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OfficePageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OfficePageRead? onComplete,
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
                 data == null ? null : _parserFn$Query$OfficePageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryOfficePageRead,
         parserFn: _parserFn$Query$OfficePageRead,
       );

  final OnQueryComplete$Query$OfficePageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OfficePageRead
    extends graphql.WatchQueryOptions<Query$OfficePageRead> {
  WatchOptions$Query$OfficePageRead({
    String? operationName,
    required Variables$Query$OfficePageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OfficePageRead? typedOptimisticResult,
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
         document: documentNodeQueryOfficePageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OfficePageRead,
       );
}

class FetchMoreOptions$Query$OfficePageRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OfficePageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OfficePageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOfficePageRead,
       );
}

extension ClientExtension$Query$OfficePageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OfficePageRead>> query$OfficePageRead(
    Options$Query$OfficePageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OfficePageRead> watchQuery$OfficePageRead(
    WatchOptions$Query$OfficePageRead options,
  ) => this.watchQuery(options);

  void writeQuery$OfficePageRead({
    required Query$OfficePageRead data,
    required Variables$Query$OfficePageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOfficePageRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OfficePageRead? readQuery$OfficePageRead({
    required Variables$Query$OfficePageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOfficePageRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OfficePageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OfficePageRead> useQuery$OfficePageRead(
  Options$Query$OfficePageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OfficePageRead> useWatchQuery$OfficePageRead(
  WatchOptions$Query$OfficePageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$OfficePageRead$Widget
    extends graphql_flutter.Query<Query$OfficePageRead> {
  Query$OfficePageRead$Widget({
    widgets.Key? key,
    required Options$Query$OfficePageRead options,
    required graphql_flutter.QueryBuilder<Query$OfficePageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OfficePageRead$allInfoOffices {
  Query$OfficePageRead$allInfoOffices({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'InfoOfficesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices(
      totalCount: (l$totalCount as int),
      pageInfo: Query$OfficePageRead$allInfoOffices$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$OfficePageRead$allInfoOffices$pageInfo pageInfo;

  final List<Query$OfficePageRead$allInfoOffices$nodes?> nodes;

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
    if (other is! Query$OfficePageRead$allInfoOffices ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices
    on Query$OfficePageRead$allInfoOffices {
  CopyWith$Query$OfficePageRead$allInfoOffices<
    Query$OfficePageRead$allInfoOffices
  >
  get copyWith => CopyWith$Query$OfficePageRead$allInfoOffices(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices<TRes> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices(
    Query$OfficePageRead$allInfoOffices instance,
    TRes Function(Query$OfficePageRead$allInfoOffices) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices;

  factory CopyWith$Query$OfficePageRead$allInfoOffices.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices;

  TRes call({
    int? totalCount,
    Query$OfficePageRead$allInfoOffices$pageInfo? pageInfo,
    List<Query$OfficePageRead$allInfoOffices$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$OfficePageRead$allInfoOffices$nodes?> Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes<
          Query$OfficePageRead$allInfoOffices$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices(this._instance, this._then);

  final Query$OfficePageRead$allInfoOffices _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OfficePageRead$allInfoOffices$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$OfficePageRead$allInfoOffices$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$OfficePageRead$allInfoOffices$nodes?> Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes<
          Query$OfficePageRead$allInfoOffices$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$OfficePageRead$allInfoOffices$pageInfo? pageInfo,
    List<Query$OfficePageRead$allInfoOffices$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$pageInfo {
  Query$OfficePageRead$allInfoOffices$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$OfficePageRead$allInfoOffices$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$pageInfo(
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
    if (other is! Query$OfficePageRead$allInfoOffices$pageInfo ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$pageInfo
    on Query$OfficePageRead$allInfoOffices$pageInfo {
  CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<
    Query$OfficePageRead$allInfoOffices$pageInfo
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo(
    Query$OfficePageRead$allInfoOffices$pageInfo instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$pageInfo) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$pageInfo;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$pageInfo<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$pageInfo _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$pageInfo(
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

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$pageInfo<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes {
  Query$OfficePageRead$allInfoOffices$nodes({
    required this.infoOfficeId,
    required this.infoCompanyId,
    required this.code,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.address,
    this.update_user,
    this.$__typename = 'InfoOffice',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$address = json['address'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes(
      infoOfficeId: (l$infoOfficeId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      address: l$address == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoOfficeId;

  final String infoCompanyId;

  final String code;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$OfficePageRead$allInfoOffices$nodes$labels? labels;

  final Query$OfficePageRead$allInfoOffices$nodes$address? address;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user? update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$address = address;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
      l$infoCompanyId,
      l$code,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$address,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OfficePageRead$allInfoOffices$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes
    on Query$OfficePageRead$allInfoOffices$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes<
    Query$OfficePageRead$allInfoOffices$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes<TRes> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes(
    Query$OfficePageRead$allInfoOffices$nodes instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes;

  TRes call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OfficePageRead$allInfoOffices$nodes$labels? labels,
    Query$OfficePageRead$allInfoOffices$nodes$address? address,
    Query$OfficePageRead$allInfoOffices$nodes$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> get labels;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<TRes> get address;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$nodes<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? address = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$OfficePageRead$allInfoOffices$nodes$labels?),
      address: address == _undefined
          ? _instance.address
          : (address as Query$OfficePageRead$allInfoOffices$nodes$address?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$OfficePageRead$allInfoOffices$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$nodes<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes(this._res);

  TRes _res;

  call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OfficePageRead$allInfoOffices$nodes$labels? labels,
    Query$OfficePageRead$allInfoOffices$nodes$address? address,
    Query$OfficePageRead$allInfoOffices$nodes$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> get labels =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels.stub(_res);

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<TRes>
  get address =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address.stub(_res);

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user.stub(_res);
}

class Query$OfficePageRead$allInfoOffices$nodes$labels {
  Query$OfficePageRead$allInfoOffices$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$labels ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels
    on Query$OfficePageRead$allInfoOffices$nodes$labels {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<
    Query$OfficePageRead$allInfoOffices$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels(this, (i) => i);
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels(
    Query$OfficePageRead$allInfoOffices$nodes$labels instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$labels) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices$nodes$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes>
    implements CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels(this._res);

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address {
  Query$OfficePageRead$allInfoOffices$nodes$address({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.address1,
    this.address2,
    this.billName,
    this.phone,
    this.faxNumber,
    this.remarks,
    this.updateAt,
    this.remove,
    this.$__typename = 'InfoAddress',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$billName = json['billName'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      address1: l$address1 == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      billName: l$billName == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$billName.fromJson(
              (l$billName as Map<String, dynamic>),
            ),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1? address1;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2? address2;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName? billName;

  final String? phone;

  final String? faxNumber;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31663 = iso31663;
    _resultData['iso31663'] = l$iso31663;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1?.toJson();
    final l$address2 = address2;
    _resultData['address2'] = l$address2?.toJson();
    final l$billName = billName;
    _resultData['billName'] = l$billName?.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$billName = billName;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$address1,
      l$address2,
      l$billName,
      l$phone,
      l$faxNumber,
      l$remarks,
      l$updateAt,
      l$remove,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31663 = iso31663;
    final lOther$iso31663 = other.iso31663;
    if (l$iso31663 != lOther$iso31663) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$billName = billName;
    final lOther$billName = other.billName;
    if (l$billName != lOther$billName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (l$faxNumber != lOther$faxNumber) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address
    on Query$OfficePageRead$allInfoOffices$nodes$address {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<
    Query$OfficePageRead$allInfoOffices$nodes$address
  >
  get copyWith => CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address(
    Query$OfficePageRead$allInfoOffices$nodes$address instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$address) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1? address1,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2? address2,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName? billName,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<TRes>
  get address1;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<TRes>
  get address2;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<TRes>
  get billName;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address<TRes>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices$nodes$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? billName = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31663: iso31663 == _undefined
          ? _instance.iso31663
          : (iso31663 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2?),
      billName: billName == _undefined
          ? _instance.billName
          : (billName
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<TRes>
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<TRes>
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<TRes>
  get billName {
    final local$billName = _instance.billName;
    return local$billName == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName(
            local$billName,
            (e) => call(billName: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address<TRes>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1? address1,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2? address2,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName? billName,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<TRes>
  get address1 =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<TRes>
  get address2 =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<TRes>
  get billName =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1 {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$address$address1 ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1
    on Query$OfficePageRead$allInfoOffices$nodes$address$address1 {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1 instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$address$address1)
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1 _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1,
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
    Query$OfficePageRead$allInfoOffices$nodes$address$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2 {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$address$address2 ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2
    on Query$OfficePageRead$allInfoOffices$nodes$address$address2 {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2 instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$address$address2)
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2 _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2,
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
    Query$OfficePageRead$allInfoOffices$nodes$address$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$address$billName ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName
    on Query$OfficePageRead$allInfoOffices$nodes$address$billName {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$address$billName)
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName,
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
    Query$OfficePageRead$allInfoOffices$nodes$address$billName(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$address$billName$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user {
  Query$OfficePageRead$allInfoOffices$nodes$update_user({
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

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$update_user(
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
          : Query$OfficePageRead$allInfoOffices$nodes$update_user$name.fromJson(
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

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name? name;

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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$update_user ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user
    on Query$OfficePageRead$allInfoOffices$nodes$update_user {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<
    Query$OfficePageRead$allInfoOffices$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user(
    Query$OfficePageRead$allInfoOffices$nodes$update_user instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$update_user) then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name? name,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<TRes>
  get name;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes> {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user _instance;

  final TRes Function(Query$OfficePageRead$allInfoOffices$nodes$update_user)
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
    Query$OfficePageRead$allInfoOffices$nodes$update_user(
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
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<TRes>
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user<TRes> {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user(
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
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<TRes>
  get name =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name.fromJson(
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
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name
    on Query$OfficePageRead$allInfoOffices$nodes$update_user$name {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name instance,
    TRes Function(Query$OfficePageRead$allInfoOffices$nodes$update_user$name)
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name,
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
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OfficePageRead$allInfoOffices$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
