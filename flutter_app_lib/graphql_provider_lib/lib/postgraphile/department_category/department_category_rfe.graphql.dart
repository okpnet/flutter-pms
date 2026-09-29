import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$DepartmentCategoryRfe {
  factory Variables$Query$DepartmentCategoryRfe({
    required String infoDepartmentKindValueId,
    required bool ja,
    required bool en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => Variables$Query$DepartmentCategoryRfe._({
    r'infoDepartmentKindValueId': infoDepartmentKindValueId,
    r'ja': ja,
    r'en': en,
    if (jaLanguageCodeId != null) r'jaLanguageCodeId': jaLanguageCodeId,
    if (enLanguageCodeId != null) r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$DepartmentCategoryRfe._(this._$data);

  factory Variables$Query$DepartmentCategoryRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentKindValueId = data['infoDepartmentKindValueId'];
    result$data['infoDepartmentKindValueId'] =
        (l$infoDepartmentKindValueId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    if (data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = data['jaLanguageCodeId'];
      result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String?);
    }
    if (data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = data['enLanguageCodeId'];
      result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String?);
    }
    return Variables$Query$DepartmentCategoryRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoDepartmentKindValueId =>
      (_$data['infoDepartmentKindValueId'] as String);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  String? get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String?);

  String? get enLanguageCodeId => (_$data['enLanguageCodeId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    result$data['infoDepartmentKindValueId'] = l$infoDepartmentKindValueId;
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    if (_$data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = jaLanguageCodeId;
      result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    }
    if (_$data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = enLanguageCodeId;
      result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$DepartmentCategoryRfe<
    Variables$Query$DepartmentCategoryRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$DepartmentCategoryRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DepartmentCategoryRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    final lOther$infoDepartmentKindValueId = other.infoDepartmentKindValueId;
    if (l$infoDepartmentKindValueId != lOther$infoDepartmentKindValueId) {
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
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (_$data.containsKey('jaLanguageCodeId') !=
        other._$data.containsKey('jaLanguageCodeId')) {
      return false;
    }
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (_$data.containsKey('enLanguageCodeId') !=
        other._$data.containsKey('enLanguageCodeId')) {
      return false;
    }
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    final l$ja = ja;
    final l$en = en;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$infoDepartmentKindValueId,
      l$ja,
      l$en,
      _$data.containsKey('jaLanguageCodeId') ? l$jaLanguageCodeId : const {},
      _$data.containsKey('enLanguageCodeId') ? l$enLanguageCodeId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$DepartmentCategoryRfe<TRes> {
  factory CopyWith$Variables$Query$DepartmentCategoryRfe(
    Variables$Query$DepartmentCategoryRfe instance,
    TRes Function(Variables$Query$DepartmentCategoryRfe) then,
  ) = _CopyWithImpl$Variables$Query$DepartmentCategoryRfe;

  factory CopyWith$Variables$Query$DepartmentCategoryRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DepartmentCategoryRfe;

  TRes call({
    String? infoDepartmentKindValueId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$DepartmentCategoryRfe<TRes>
    implements CopyWith$Variables$Query$DepartmentCategoryRfe<TRes> {
  _CopyWithImpl$Variables$Query$DepartmentCategoryRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$DepartmentCategoryRfe _instance;

  final TRes Function(Variables$Query$DepartmentCategoryRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentKindValueId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$DepartmentCategoryRfe._({
      ..._instance._$data,
      if (infoDepartmentKindValueId != _undefined &&
          infoDepartmentKindValueId != null)
        'infoDepartmentKindValueId': (infoDepartmentKindValueId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (jaLanguageCodeId != _undefined)
        'jaLanguageCodeId': (jaLanguageCodeId as String?),
      if (enLanguageCodeId != _undefined)
        'enLanguageCodeId': (enLanguageCodeId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$DepartmentCategoryRfe<TRes>
    implements CopyWith$Variables$Query$DepartmentCategoryRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$DepartmentCategoryRfe(this._res);

  TRes _res;

  call({
    String? infoDepartmentKindValueId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$DepartmentCategoryRfe {
  Query$DepartmentCategoryRfe({
    this.infoDepartmentKindValueByInfoDepartmentKindValueId,
    this.$__typename = 'Query',
  });

  factory Query$DepartmentCategoryRfe.fromJson(Map<String, dynamic> json) {
    final l$infoDepartmentKindValueByInfoDepartmentKindValueId =
        json['infoDepartmentKindValueByInfoDepartmentKindValueId'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe(
      infoDepartmentKindValueByInfoDepartmentKindValueId:
          l$infoDepartmentKindValueByInfoDepartmentKindValueId == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.fromJson(
              (l$infoDepartmentKindValueByInfoDepartmentKindValueId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId?
  infoDepartmentKindValueByInfoDepartmentKindValueId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentKindValueByInfoDepartmentKindValueId =
        infoDepartmentKindValueByInfoDepartmentKindValueId;
    _resultData['infoDepartmentKindValueByInfoDepartmentKindValueId'] =
        l$infoDepartmentKindValueByInfoDepartmentKindValueId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartmentKindValueByInfoDepartmentKindValueId =
        infoDepartmentKindValueByInfoDepartmentKindValueId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentKindValueByInfoDepartmentKindValueId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DepartmentCategoryRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentKindValueByInfoDepartmentKindValueId =
        infoDepartmentKindValueByInfoDepartmentKindValueId;
    final lOther$infoDepartmentKindValueByInfoDepartmentKindValueId =
        other.infoDepartmentKindValueByInfoDepartmentKindValueId;
    if (l$infoDepartmentKindValueByInfoDepartmentKindValueId !=
        lOther$infoDepartmentKindValueByInfoDepartmentKindValueId) {
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

extension UtilityExtension$Query$DepartmentCategoryRfe
    on Query$DepartmentCategoryRfe {
  CopyWith$Query$DepartmentCategoryRfe<Query$DepartmentCategoryRfe>
  get copyWith => CopyWith$Query$DepartmentCategoryRfe(this, (i) => i);
}

abstract class CopyWith$Query$DepartmentCategoryRfe<TRes> {
  factory CopyWith$Query$DepartmentCategoryRfe(
    Query$DepartmentCategoryRfe instance,
    TRes Function(Query$DepartmentCategoryRfe) then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe;

  factory CopyWith$Query$DepartmentCategoryRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$DepartmentCategoryRfe;

  TRes call({
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId?
    infoDepartmentKindValueByInfoDepartmentKindValueId,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
    TRes
  >
  get infoDepartmentKindValueByInfoDepartmentKindValueId;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe<TRes>
    implements CopyWith$Query$DepartmentCategoryRfe<TRes> {
  _CopyWithImpl$Query$DepartmentCategoryRfe(this._instance, this._then);

  final Query$DepartmentCategoryRfe _instance;

  final TRes Function(Query$DepartmentCategoryRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentKindValueByInfoDepartmentKindValueId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe(
      infoDepartmentKindValueByInfoDepartmentKindValueId:
          infoDepartmentKindValueByInfoDepartmentKindValueId == _undefined
          ? _instance.infoDepartmentKindValueByInfoDepartmentKindValueId
          : (infoDepartmentKindValueByInfoDepartmentKindValueId
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
    TRes
  >
  get infoDepartmentKindValueByInfoDepartmentKindValueId {
    final local$infoDepartmentKindValueByInfoDepartmentKindValueId =
        _instance.infoDepartmentKindValueByInfoDepartmentKindValueId;
    return local$infoDepartmentKindValueByInfoDepartmentKindValueId == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
            local$infoDepartmentKindValueByInfoDepartmentKindValueId,
            (e) => call(infoDepartmentKindValueByInfoDepartmentKindValueId: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe<TRes>
    implements CopyWith$Query$DepartmentCategoryRfe<TRes> {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe(this._res);

  TRes _res;

  call({
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId?
    infoDepartmentKindValueByInfoDepartmentKindValueId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
    TRes
  >
  get infoDepartmentKindValueByInfoDepartmentKindValueId =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.stub(
        _res,
      );
}

const documentNodeQueryDepartmentCategoryRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'DepartmentCategoryRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'infoDepartmentKindValueId'),
          ),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(
              value: 'infoDepartmentKindValueByInfoDepartmentKindValueId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoDepartmentKindValueId'),
                value: VariableNode(
                  name: NameNode(value: 'infoDepartmentKindValueId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoDepartmentKindValueId'),
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
                  name: NameNode(value: 'updateUserId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateUserHistoryId'),
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
                          value: 'sharedDictionaryBySharedDictionaryNameId',
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
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                          value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
Query$DepartmentCategoryRfe _parserFn$Query$DepartmentCategoryRfe(
  Map<String, dynamic> data,
) => Query$DepartmentCategoryRfe.fromJson(data);
typedef OnQueryComplete$Query$DepartmentCategoryRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$DepartmentCategoryRfe?,
    );

class Options$Query$DepartmentCategoryRfe
    extends graphql.QueryOptions<Query$DepartmentCategoryRfe> {
  Options$Query$DepartmentCategoryRfe({
    String? operationName,
    required Variables$Query$DepartmentCategoryRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DepartmentCategoryRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DepartmentCategoryRfe? onComplete,
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
                     : _parserFn$Query$DepartmentCategoryRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryDepartmentCategoryRfe,
         parserFn: _parserFn$Query$DepartmentCategoryRfe,
       );

  final OnQueryComplete$Query$DepartmentCategoryRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$DepartmentCategoryRfe
    extends graphql.WatchQueryOptions<Query$DepartmentCategoryRfe> {
  WatchOptions$Query$DepartmentCategoryRfe({
    String? operationName,
    required Variables$Query$DepartmentCategoryRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DepartmentCategoryRfe? typedOptimisticResult,
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
         document: documentNodeQueryDepartmentCategoryRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$DepartmentCategoryRfe,
       );
}

class FetchMoreOptions$Query$DepartmentCategoryRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DepartmentCategoryRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DepartmentCategoryRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryDepartmentCategoryRfe,
       );
}

extension ClientExtension$Query$DepartmentCategoryRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DepartmentCategoryRfe>>
  query$DepartmentCategoryRfe(
    Options$Query$DepartmentCategoryRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$DepartmentCategoryRfe>
  watchQuery$DepartmentCategoryRfe(
    WatchOptions$Query$DepartmentCategoryRfe options,
  ) => this.watchQuery(options);

  void writeQuery$DepartmentCategoryRfe({
    required Query$DepartmentCategoryRfe data,
    required Variables$Query$DepartmentCategoryRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryDepartmentCategoryRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$DepartmentCategoryRfe? readQuery$DepartmentCategoryRfe({
    required Variables$Query$DepartmentCategoryRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryDepartmentCategoryRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DepartmentCategoryRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$DepartmentCategoryRfe>
useQuery$DepartmentCategoryRfe(Options$Query$DepartmentCategoryRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$DepartmentCategoryRfe>
useWatchQuery$DepartmentCategoryRfe(
  WatchOptions$Query$DepartmentCategoryRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$DepartmentCategoryRfe$Widget
    extends graphql_flutter.Query<Query$DepartmentCategoryRfe> {
  Query$DepartmentCategoryRfe$Widget({
    widgets.Key? key,
    required Options$Query$DepartmentCategoryRfe options,
    required graphql_flutter.QueryBuilder<Query$DepartmentCategoryRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId({
    required this.infoDepartmentKindValueId,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.$__typename = 'InfoDepartmentKindValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartmentKindValueId = json['infoDepartmentKindValueId'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
      infoDepartmentKindValueId: (l$infoDepartmentKindValueId as String),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoDepartmentKindValueId;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    _resultData['infoDepartmentKindValueId'] = l$infoDepartmentKindValueId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentKindValueId,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$labels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentKindValueId = infoDepartmentKindValueId;
    final lOther$infoDepartmentKindValueId = other.infoDepartmentKindValueId;
    if (l$infoDepartmentKindValueId != lOther$infoDepartmentKindValueId) {
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
    final l$updateUserId = updateUserId;
    final lOther$updateUserId = other.updateUserId;
    if (l$updateUserId != lOther$updateUserId) {
      return false;
    }
    final l$updateUserHistoryId = updateUserHistoryId;
    final lOther$updateUserHistoryId = other.updateUserHistoryId;
    if (l$updateUserHistoryId != lOther$updateUserHistoryId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId
    on Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId;

  TRes call({
    String? infoDepartmentKindValueId,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentKindValueId = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
      infoDepartmentKindValueId:
          infoDepartmentKindValueId == _undefined ||
              infoDepartmentKindValueId == null
          ? _instance.infoDepartmentKindValueId
          : (infoDepartmentKindValueId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId(
    this._res,
  );

  TRes _res;

  call({
    String? infoDepartmentKindValueId,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels.stub(
        _res,
      );
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels.fromJson(
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
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels,
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
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
  ja;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
  ja;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
  ja;

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentCategoryRfe$infoDepartmentKindValueByInfoDepartmentKindValueId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
