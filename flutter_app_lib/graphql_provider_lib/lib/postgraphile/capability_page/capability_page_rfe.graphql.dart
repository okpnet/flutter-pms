import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CapabilityPageRfe {
  factory Variables$Query$CapabilityPageRfe({
    required String mstrCapabilityId,
    required bool ja,
    required bool en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => Variables$Query$CapabilityPageRfe._({
    r'mstrCapabilityId': mstrCapabilityId,
    r'ja': ja,
    r'en': en,
    if (jaLanguageCodeId != null) r'jaLanguageCodeId': jaLanguageCodeId,
    if (enLanguageCodeId != null) r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$CapabilityPageRfe._(this._$data);

  factory Variables$Query$CapabilityPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrCapabilityId = data['mstrCapabilityId'];
    result$data['mstrCapabilityId'] = (l$mstrCapabilityId as String);
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
    return Variables$Query$CapabilityPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrCapabilityId => (_$data['mstrCapabilityId'] as String);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  String? get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String?);

  String? get enLanguageCodeId => (_$data['enLanguageCodeId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrCapabilityId = mstrCapabilityId;
    result$data['mstrCapabilityId'] = l$mstrCapabilityId;
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

  CopyWith$Variables$Query$CapabilityPageRfe<Variables$Query$CapabilityPageRfe>
  get copyWith => CopyWith$Variables$Query$CapabilityPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CapabilityPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$ja = ja;
    final l$en = en;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$ja,
      l$en,
      _$data.containsKey('jaLanguageCodeId') ? l$jaLanguageCodeId : const {},
      _$data.containsKey('enLanguageCodeId') ? l$enLanguageCodeId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$CapabilityPageRfe<TRes> {
  factory CopyWith$Variables$Query$CapabilityPageRfe(
    Variables$Query$CapabilityPageRfe instance,
    TRes Function(Variables$Query$CapabilityPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$CapabilityPageRfe;

  factory CopyWith$Variables$Query$CapabilityPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CapabilityPageRfe;

  TRes call({
    String? mstrCapabilityId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$CapabilityPageRfe<TRes>
    implements CopyWith$Variables$Query$CapabilityPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$CapabilityPageRfe(this._instance, this._then);

  final Variables$Query$CapabilityPageRfe _instance;

  final TRes Function(Variables$Query$CapabilityPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$CapabilityPageRfe._({
      ..._instance._$data,
      if (mstrCapabilityId != _undefined && mstrCapabilityId != null)
        'mstrCapabilityId': (mstrCapabilityId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (jaLanguageCodeId != _undefined)
        'jaLanguageCodeId': (jaLanguageCodeId as String?),
      if (enLanguageCodeId != _undefined)
        'enLanguageCodeId': (enLanguageCodeId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CapabilityPageRfe<TRes>
    implements CopyWith$Variables$Query$CapabilityPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$CapabilityPageRfe(this._res);

  TRes _res;

  call({
    String? mstrCapabilityId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$CapabilityPageRfe {
  Query$CapabilityPageRfe({
    this.mstrCapabilityByMstrCapabilityId,
    this.$__typename = 'Query',
  });

  factory Query$CapabilityPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrCapabilityByMstrCapabilityId =
        json['mstrCapabilityByMstrCapabilityId'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe(
      mstrCapabilityByMstrCapabilityId:
          l$mstrCapabilityByMstrCapabilityId == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.fromJson(
              (l$mstrCapabilityByMstrCapabilityId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId?
  mstrCapabilityByMstrCapabilityId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapabilityByMstrCapabilityId = mstrCapabilityByMstrCapabilityId;
    _resultData['mstrCapabilityByMstrCapabilityId'] =
        l$mstrCapabilityByMstrCapabilityId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrCapabilityByMstrCapabilityId = mstrCapabilityByMstrCapabilityId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrCapabilityByMstrCapabilityId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CapabilityPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityByMstrCapabilityId = mstrCapabilityByMstrCapabilityId;
    final lOther$mstrCapabilityByMstrCapabilityId =
        other.mstrCapabilityByMstrCapabilityId;
    if (l$mstrCapabilityByMstrCapabilityId !=
        lOther$mstrCapabilityByMstrCapabilityId) {
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

extension UtilityExtension$Query$CapabilityPageRfe on Query$CapabilityPageRfe {
  CopyWith$Query$CapabilityPageRfe<Query$CapabilityPageRfe> get copyWith =>
      CopyWith$Query$CapabilityPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$CapabilityPageRfe<TRes> {
  factory CopyWith$Query$CapabilityPageRfe(
    Query$CapabilityPageRfe instance,
    TRes Function(Query$CapabilityPageRfe) then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe;

  factory CopyWith$Query$CapabilityPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$CapabilityPageRfe;

  TRes call({
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId?
    mstrCapabilityByMstrCapabilityId,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<TRes>
  get mstrCapabilityByMstrCapabilityId;
}

class _CopyWithImpl$Query$CapabilityPageRfe<TRes>
    implements CopyWith$Query$CapabilityPageRfe<TRes> {
  _CopyWithImpl$Query$CapabilityPageRfe(this._instance, this._then);

  final Query$CapabilityPageRfe _instance;

  final TRes Function(Query$CapabilityPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityByMstrCapabilityId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe(
      mstrCapabilityByMstrCapabilityId:
          mstrCapabilityByMstrCapabilityId == _undefined
          ? _instance.mstrCapabilityByMstrCapabilityId
          : (mstrCapabilityByMstrCapabilityId
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<TRes>
  get mstrCapabilityByMstrCapabilityId {
    final local$mstrCapabilityByMstrCapabilityId =
        _instance.mstrCapabilityByMstrCapabilityId;
    return local$mstrCapabilityByMstrCapabilityId == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
            local$mstrCapabilityByMstrCapabilityId,
            (e) => call(mstrCapabilityByMstrCapabilityId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe<TRes>
    implements CopyWith$Query$CapabilityPageRfe<TRes> {
  _CopyWithStubImpl$Query$CapabilityPageRfe(this._res);

  TRes _res;

  call({
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId?
    mstrCapabilityByMstrCapabilityId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<TRes>
  get mstrCapabilityByMstrCapabilityId =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.stub(
        _res,
      );
}

const documentNodeQueryCapabilityPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CapabilityPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrCapabilityId')),
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
            name: NameNode(value: 'mstrCapabilityByMstrCapabilityId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrCapabilityId'),
                value: VariableNode(name: NameNode(value: 'mstrCapabilityId')),
              ),
            ],
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
Query$CapabilityPageRfe _parserFn$Query$CapabilityPageRfe(
  Map<String, dynamic> data,
) => Query$CapabilityPageRfe.fromJson(data);
typedef OnQueryComplete$Query$CapabilityPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CapabilityPageRfe?);

class Options$Query$CapabilityPageRfe
    extends graphql.QueryOptions<Query$CapabilityPageRfe> {
  Options$Query$CapabilityPageRfe({
    String? operationName,
    required Variables$Query$CapabilityPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CapabilityPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CapabilityPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$CapabilityPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryCapabilityPageRfe,
         parserFn: _parserFn$Query$CapabilityPageRfe,
       );

  final OnQueryComplete$Query$CapabilityPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CapabilityPageRfe
    extends graphql.WatchQueryOptions<Query$CapabilityPageRfe> {
  WatchOptions$Query$CapabilityPageRfe({
    String? operationName,
    required Variables$Query$CapabilityPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CapabilityPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryCapabilityPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CapabilityPageRfe,
       );
}

class FetchMoreOptions$Query$CapabilityPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CapabilityPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CapabilityPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryCapabilityPageRfe,
       );
}

extension ClientExtension$Query$CapabilityPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CapabilityPageRfe>> query$CapabilityPageRfe(
    Options$Query$CapabilityPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$CapabilityPageRfe> watchQuery$CapabilityPageRfe(
    WatchOptions$Query$CapabilityPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$CapabilityPageRfe({
    required Query$CapabilityPageRfe data,
    required Variables$Query$CapabilityPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryCapabilityPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CapabilityPageRfe? readQuery$CapabilityPageRfe({
    required Variables$Query$CapabilityPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryCapabilityPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CapabilityPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CapabilityPageRfe>
useQuery$CapabilityPageRfe(Options$Query$CapabilityPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CapabilityPageRfe>
useWatchQuery$CapabilityPageRfe(WatchOptions$Query$CapabilityPageRfe options) =>
    graphql_flutter.useWatchQuery(options);

class Query$CapabilityPageRfe$Widget
    extends graphql_flutter.Query<Query$CapabilityPageRfe> {
  Query$CapabilityPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$CapabilityPageRfe options,
    required graphql_flutter.QueryBuilder<Query$CapabilityPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId({
    required this.mstrCapabilityId,
    required this.code,
    this.detail,
    required this.referenceValue,
    this.max,
    this.min,
    this.step,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.$__typename = 'MstrCapability',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$referenceValue = json['referenceValue'];
    final l$max = json['max'];
    final l$min = json['min'];
    final l$step = json['step'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
      mstrCapabilityId: (l$mstrCapabilityId as String),
      code: (l$code as String),
      detail: (l$detail as String?),
      referenceValue: (l$referenceValue as String),
      max: (l$max as String?),
      min: (l$min as String?),
      step: (l$step as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
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

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels? labels;

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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$code = code;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$code,
      l$detail,
      l$referenceValue,
      l$max,
      l$min,
      l$step,
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
    if (other is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId
    on Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId instance,
    TRes Function(Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId)
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId;

  TRes call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<TRes>
  get labels;
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId _instance;

  final TRes Function(Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId)
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
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
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
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId(
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
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<TRes>
  get labels =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels.stub(
        _res,
      );
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels.fromJson(
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
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels
    on Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels,
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
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
  ja;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
  ja;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
  ja;

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$CapabilityPageRfe$mstrCapabilityByMstrCapabilityId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
