import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CapableStaffPageRead {
  factory Variables$Query$CapableStaffPageRead({
    required int first,
    int? offset,
    Input$MstrCapabilityCondition? condition,
    List<Enum$MstrCapabilitiesOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$CapableStaffPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$CapableStaffPageRead._(this._$data);

  factory Variables$Query$CapableStaffPageRead.fromJson(
    Map<String, dynamic> data,
  ) {
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
          : Input$MstrCapabilityCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrCapabilitiesOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$CapableStaffPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrCapabilityCondition? get condition =>
      (_$data['condition'] as Input$MstrCapabilityCondition?);

  List<Enum$MstrCapabilitiesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrCapabilitiesOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrCapabilitiesOrderBy(e))
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

  CopyWith$Variables$Query$CapableStaffPageRead<
    Variables$Query$CapableStaffPageRead
  >
  get copyWith => CopyWith$Variables$Query$CapableStaffPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CapableStaffPageRead ||
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

abstract class CopyWith$Variables$Query$CapableStaffPageRead<TRes> {
  factory CopyWith$Variables$Query$CapableStaffPageRead(
    Variables$Query$CapableStaffPageRead instance,
    TRes Function(Variables$Query$CapableStaffPageRead) then,
  ) = _CopyWithImpl$Variables$Query$CapableStaffPageRead;

  factory CopyWith$Variables$Query$CapableStaffPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CapableStaffPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrCapabilityCondition? condition,
    List<Enum$MstrCapabilitiesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$CapableStaffPageRead<TRes>
    implements CopyWith$Variables$Query$CapableStaffPageRead<TRes> {
  _CopyWithImpl$Variables$Query$CapableStaffPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$CapableStaffPageRead _instance;

  final TRes Function(Variables$Query$CapableStaffPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$CapableStaffPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrCapabilityCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrCapabilitiesOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CapableStaffPageRead<TRes>
    implements CopyWith$Variables$Query$CapableStaffPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$CapableStaffPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrCapabilityCondition? condition,
    List<Enum$MstrCapabilitiesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$CapableStaffPageRead {
  Query$CapableStaffPageRead({
    this.allMstrCapabilities,
    this.$__typename = 'Query',
  });

  factory Query$CapableStaffPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrCapabilities = json['allMstrCapabilities'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead(
      allMstrCapabilities: l$allMstrCapabilities == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities.fromJson(
              (l$allMstrCapabilities as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CapableStaffPageRead$allMstrCapabilities? allMstrCapabilities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrCapabilities = allMstrCapabilities;
    _resultData['allMstrCapabilities'] = l$allMstrCapabilities?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrCapabilities = allMstrCapabilities;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrCapabilities, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CapableStaffPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrCapabilities = allMstrCapabilities;
    final lOther$allMstrCapabilities = other.allMstrCapabilities;
    if (l$allMstrCapabilities != lOther$allMstrCapabilities) {
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

extension UtilityExtension$Query$CapableStaffPageRead
    on Query$CapableStaffPageRead {
  CopyWith$Query$CapableStaffPageRead<Query$CapableStaffPageRead>
  get copyWith => CopyWith$Query$CapableStaffPageRead(this, (i) => i);
}

abstract class CopyWith$Query$CapableStaffPageRead<TRes> {
  factory CopyWith$Query$CapableStaffPageRead(
    Query$CapableStaffPageRead instance,
    TRes Function(Query$CapableStaffPageRead) then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead;

  factory CopyWith$Query$CapableStaffPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$CapableStaffPageRead;

  TRes call({
    Query$CapableStaffPageRead$allMstrCapabilities? allMstrCapabilities,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes>
  get allMstrCapabilities;
}

class _CopyWithImpl$Query$CapableStaffPageRead<TRes>
    implements CopyWith$Query$CapableStaffPageRead<TRes> {
  _CopyWithImpl$Query$CapableStaffPageRead(this._instance, this._then);

  final Query$CapableStaffPageRead _instance;

  final TRes Function(Query$CapableStaffPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrCapabilities = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead(
      allMstrCapabilities: allMstrCapabilities == _undefined
          ? _instance.allMstrCapabilities
          : (allMstrCapabilities
                as Query$CapableStaffPageRead$allMstrCapabilities?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes>
  get allMstrCapabilities {
    final local$allMstrCapabilities = _instance.allMstrCapabilities;
    return local$allMstrCapabilities == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities(
            local$allMstrCapabilities,
            (e) => call(allMstrCapabilities: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead<TRes>
    implements CopyWith$Query$CapableStaffPageRead<TRes> {
  _CopyWithStubImpl$Query$CapableStaffPageRead(this._res);

  TRes _res;

  call({
    Query$CapableStaffPageRead$allMstrCapabilities? allMstrCapabilities,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes>
  get allMstrCapabilities =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities.stub(_res);
}

const documentNodeQueryCapableStaffPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CapableStaffPageRead'),
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
            name: NameNode(value: 'MstrCapabilityCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrCapabilitiesOrderBy'),
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
            name: NameNode(value: 'allMstrCapabilities'),
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
                        name: NameNode(value: 'mstrCapabilityId'),
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
                        name: NameNode(value: 'referenceValue'),
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
                          value: 'mstrStaffCapabilitiesByMstrCapabilityId',
                        ),
                        alias: NameNode(value: 'staff_capability'),
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
                                    name: NameNode(value: 'mstrCapabilityId'),
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
                                      value: 'infoStaffByInfoStaffId',
                                    ),
                                    alias: NameNode(value: 'staff'),
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
Query$CapableStaffPageRead _parserFn$Query$CapableStaffPageRead(
  Map<String, dynamic> data,
) => Query$CapableStaffPageRead.fromJson(data);
typedef OnQueryComplete$Query$CapableStaffPageRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CapableStaffPageRead?);

class Options$Query$CapableStaffPageRead
    extends graphql.QueryOptions<Query$CapableStaffPageRead> {
  Options$Query$CapableStaffPageRead({
    String? operationName,
    required Variables$Query$CapableStaffPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CapableStaffPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CapableStaffPageRead? onComplete,
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
                     : _parserFn$Query$CapableStaffPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryCapableStaffPageRead,
         parserFn: _parserFn$Query$CapableStaffPageRead,
       );

  final OnQueryComplete$Query$CapableStaffPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CapableStaffPageRead
    extends graphql.WatchQueryOptions<Query$CapableStaffPageRead> {
  WatchOptions$Query$CapableStaffPageRead({
    String? operationName,
    required Variables$Query$CapableStaffPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CapableStaffPageRead? typedOptimisticResult,
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
         document: documentNodeQueryCapableStaffPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CapableStaffPageRead,
       );
}

class FetchMoreOptions$Query$CapableStaffPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CapableStaffPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CapableStaffPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryCapableStaffPageRead,
       );
}

extension ClientExtension$Query$CapableStaffPageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CapableStaffPageRead>>
  query$CapableStaffPageRead(
    Options$Query$CapableStaffPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$CapableStaffPageRead>
  watchQuery$CapableStaffPageRead(
    WatchOptions$Query$CapableStaffPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$CapableStaffPageRead({
    required Query$CapableStaffPageRead data,
    required Variables$Query$CapableStaffPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryCapableStaffPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CapableStaffPageRead? readQuery$CapableStaffPageRead({
    required Variables$Query$CapableStaffPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryCapableStaffPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CapableStaffPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CapableStaffPageRead>
useQuery$CapableStaffPageRead(Options$Query$CapableStaffPageRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CapableStaffPageRead>
useWatchQuery$CapableStaffPageRead(
  WatchOptions$Query$CapableStaffPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$CapableStaffPageRead$Widget
    extends graphql_flutter.Query<Query$CapableStaffPageRead> {
  Query$CapableStaffPageRead$Widget({
    widgets.Key? key,
    required Options$Query$CapableStaffPageRead options,
    required graphql_flutter.QueryBuilder<Query$CapableStaffPageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$CapableStaffPageRead$allMstrCapabilities {
  Query$CapableStaffPageRead$allMstrCapabilities({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrCapabilitiesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$CapableStaffPageRead$allMstrCapabilities$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$CapableStaffPageRead$allMstrCapabilities$pageInfo pageInfo;

  final List<Query$CapableStaffPageRead$allMstrCapabilities$nodes?> nodes;

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
    if (other is! Query$CapableStaffPageRead$allMstrCapabilities ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities
    on Query$CapableStaffPageRead$allMstrCapabilities {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<
    Query$CapableStaffPageRead$allMstrCapabilities
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities(this, (i) => i);
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities(
    Query$CapableStaffPageRead$allMstrCapabilities instance,
    TRes Function(Query$CapableStaffPageRead$allMstrCapabilities) then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities;

  TRes call({
    int? totalCount,
    Query$CapableStaffPageRead$allMstrCapabilities$pageInfo? pageInfo,
    List<Query$CapableStaffPageRead$allMstrCapabilities$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$CapableStaffPageRead$allMstrCapabilities$nodes?> Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities<TRes>
    implements CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes> {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities _instance;

  final TRes Function(Query$CapableStaffPageRead$allMstrCapabilities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$CapableStaffPageRead$allMstrCapabilities$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<Query$CapableStaffPageRead$allMstrCapabilities$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$CapableStaffPageRead$allMstrCapabilities$nodes?> Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities<TRes>
    implements CopyWith$Query$CapableStaffPageRead$allMstrCapabilities<TRes> {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$CapableStaffPageRead$allMstrCapabilities$pageInfo? pageInfo,
    List<Query$CapableStaffPageRead$allMstrCapabilities$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$pageInfo {
  Query$CapableStaffPageRead$allMstrCapabilities$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
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
    if (other is! Query$CapableStaffPageRead$allMstrCapabilities$pageInfo ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo
    on Query$CapableStaffPageRead$allMstrCapabilities$pageInfo {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<
    Query$CapableStaffPageRead$allMstrCapabilities$pageInfo
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
    Query$CapableStaffPageRead$allMstrCapabilities$pageInfo instance,
    TRes Function(Query$CapableStaffPageRead$allMstrCapabilities$pageInfo) then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<TRes> {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$pageInfo _instance;

  final TRes Function(Query$CapableStaffPageRead$allMstrCapabilities$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
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

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes({
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
    required this.staff_capability,
    this.update_user,
    this.$__typename = 'MstrCapability',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes.fromJson(
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
    final l$staff_capability = json['staff_capability'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes(
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
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      staff_capability:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability.fromJson(
            (l$staff_capability as Map<String, dynamic>),
          ),
      update_user: l$update_user == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user.fromJson(
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

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels? labels;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability
  staff_capability;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user?
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
    final l$staff_capability = staff_capability;
    _resultData['staff_capability'] = l$staff_capability.toJson();
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
    final l$staff_capability = staff_capability;
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
      l$staff_capability,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CapableStaffPageRead$allMstrCapabilities$nodes ||
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
    final l$staff_capability = staff_capability;
    final lOther$staff_capability = other.staff_capability;
    if (l$staff_capability != lOther$staff_capability) {
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes
  >
  get copyWith => CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes instance,
    TRes Function(Query$CapableStaffPageRead$allMstrCapabilities$nodes) then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes;

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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels? labels,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability?
    staff_capability,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<TRes>
  get labels;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
    TRes
  >
  get staff_capability;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes<TRes>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<TRes> {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes _instance;

  final TRes Function(Query$CapableStaffPageRead$allMstrCapabilities$nodes)
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
    Object? staff_capability = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes(
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
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels?),
      staff_capability:
          staff_capability == _undefined || staff_capability == null
          ? _instance.staff_capability
          : (staff_capability
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
    TRes
  >
  get staff_capability {
    final local$staff_capability = _instance.staff_capability;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
      local$staff_capability,
      (e) => call(staff_capability: e),
    );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes<TRes> {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes(
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels? labels,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability?
    staff_capability,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<TRes>
  get labels =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
    TRes
  >
  get staff_capability =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels instance,
    TRes Function(Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels)
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStaffCapabilitiesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo
  pageInfo;

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability;

  TRes call({
    int? totalCount,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo?
    pageInfo,
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo?
    pageInfo,
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
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

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes({
    required this.mstrStaffCapabilityId,
    required this.infoStaffId,
    this.mstrCapabilityId,
    this.value,
    this.stop,
    this.staff,
    this.$__typename = 'MstrStaffCapability',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffCapabilityId = json['mstrStaffCapabilityId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$value = json['value'];
    final l$stop = json['stop'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
      mstrStaffCapabilityId: (l$mstrStaffCapabilityId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrCapabilityId: (l$mstrCapabilityId as String?),
      value: (l$value as String?),
      stop: (l$stop as bool?),
      staff: l$staff == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffCapabilityId;

  final String infoStaffId;

  final String? mstrCapabilityId;

  final String? value;

  final bool? stop;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff?
  staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    _resultData['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$stop = stop;
    _resultData['stop'] = l$stop;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$value = value;
    final l$stop = stop;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      l$mstrCapabilityId,
      l$value,
      l$stop,
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes ||
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
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
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff?
    staff,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
    TRes
  >
  get staff;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrCapabilityId = _undefined,
    Object? value = _undefined,
    Object? stop = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
      mstrStaffCapabilityId:
          mstrStaffCapabilityId == _undefined || mstrStaffCapabilityId == null
          ? _instance.mstrStaffCapabilityId
          : (mstrStaffCapabilityId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      mstrCapabilityId: mstrCapabilityId == _undefined
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      stop: stop == _undefined ? _instance.stop : (stop as bool?),
      staff: staff == _undefined
          ? _instance.staff
          : (staff
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff?
    staff,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
    TRes
  >
  get staff =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff({
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
    this.update_user,
    this.$__typename = 'InfoStaff',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff.fromJson(
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
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
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
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user.fromJson(
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

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels?
  labels;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff;

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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels?
    labels,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff,
  )
  _then;

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
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
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
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff(
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels?
    labels,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user({
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

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
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
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name.fromJson(
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

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
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
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user(
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$staff_capability$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user({
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

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
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
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name.fromJson(
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

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name? name,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
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
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user(
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name.fromJson(
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
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name
    on Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name,
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
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapableStaffPageRead$allMstrCapabilities$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
