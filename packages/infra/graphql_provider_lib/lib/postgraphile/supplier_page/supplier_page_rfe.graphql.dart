import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SupplierPageRfe {
  factory Variables$Query$SupplierPageRfe({
    required String mstrStakeholderId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$SupplierPageRfe._({
    r'mstrStakeholderId': mstrStakeholderId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$SupplierPageRfe._(this._$data);

  factory Variables$Query$SupplierPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderId = data['mstrStakeholderId'];
    result$data['mstrStakeholderId'] = (l$mstrStakeholderId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$SupplierPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStakeholderId => (_$data['mstrStakeholderId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    result$data['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$SupplierPageRfe<Variables$Query$SupplierPageRfe>
  get copyWith => CopyWith$Variables$Query$SupplierPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SupplierPageRfe<TRes> {
  factory CopyWith$Variables$Query$SupplierPageRfe(
    Variables$Query$SupplierPageRfe instance,
    TRes Function(Variables$Query$SupplierPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$SupplierPageRfe;

  factory CopyWith$Variables$Query$SupplierPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SupplierPageRfe;

  TRes call({
    String? mstrStakeholderId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$SupplierPageRfe<TRes>
    implements CopyWith$Variables$Query$SupplierPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$SupplierPageRfe(this._instance, this._then);

  final Variables$Query$SupplierPageRfe _instance;

  final TRes Function(Variables$Query$SupplierPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$SupplierPageRfe._({
      ..._instance._$data,
      if (mstrStakeholderId != _undefined && mstrStakeholderId != null)
        'mstrStakeholderId': (mstrStakeholderId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierPageRfe<TRes>
    implements CopyWith$Variables$Query$SupplierPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierPageRfe(this._res);

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$SupplierPageRfe {
  Query$SupplierPageRfe({
    this.mstrStakeholderByMstrStakeholderId,
    this.$__typename = 'Query',
  });

  factory Query$SupplierPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrStakeholderByMstrStakeholderId =
        json['mstrStakeholderByMstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe(
      mstrStakeholderByMstrStakeholderId:
          l$mstrStakeholderByMstrStakeholderId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId.fromJson(
              (l$mstrStakeholderByMstrStakeholderId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId?
  mstrStakeholderByMstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    _resultData['mstrStakeholderByMstrStakeholderId'] =
        l$mstrStakeholderByMstrStakeholderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderByMstrStakeholderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    final lOther$mstrStakeholderByMstrStakeholderId =
        other.mstrStakeholderByMstrStakeholderId;
    if (l$mstrStakeholderByMstrStakeholderId !=
        lOther$mstrStakeholderByMstrStakeholderId) {
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

extension UtilityExtension$Query$SupplierPageRfe on Query$SupplierPageRfe {
  CopyWith$Query$SupplierPageRfe<Query$SupplierPageRfe> get copyWith =>
      CopyWith$Query$SupplierPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$SupplierPageRfe<TRes> {
  factory CopyWith$Query$SupplierPageRfe(
    Query$SupplierPageRfe instance,
    TRes Function(Query$SupplierPageRfe) then,
  ) = _CopyWithImpl$Query$SupplierPageRfe;

  factory CopyWith$Query$SupplierPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierPageRfe;

  TRes call({
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId?
    mstrStakeholderByMstrStakeholderId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<TRes>
  get mstrStakeholderByMstrStakeholderId;
}

class _CopyWithImpl$Query$SupplierPageRfe<TRes>
    implements CopyWith$Query$SupplierPageRfe<TRes> {
  _CopyWithImpl$Query$SupplierPageRfe(this._instance, this._then);

  final Query$SupplierPageRfe _instance;

  final TRes Function(Query$SupplierPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderByMstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe(
      mstrStakeholderByMstrStakeholderId:
          mstrStakeholderByMstrStakeholderId == _undefined
          ? _instance.mstrStakeholderByMstrStakeholderId
          : (mstrStakeholderByMstrStakeholderId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<TRes>
  get mstrStakeholderByMstrStakeholderId {
    final local$mstrStakeholderByMstrStakeholderId =
        _instance.mstrStakeholderByMstrStakeholderId;
    return local$mstrStakeholderByMstrStakeholderId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
            local$mstrStakeholderByMstrStakeholderId,
            (e) => call(mstrStakeholderByMstrStakeholderId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe<TRes>
    implements CopyWith$Query$SupplierPageRfe<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRfe(this._res);

  TRes _res;

  call({
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId?
    mstrStakeholderByMstrStakeholderId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<TRes>
  get mstrStakeholderByMstrStakeholderId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId.stub(
        _res,
      );
}

const documentNodeQuerySupplierPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStakeholderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrStakeholderByMstrStakeholderId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrStakeholderId'),
                value: VariableNode(name: NameNode(value: 'mstrStakeholderId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrStakeholderId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isCustomer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isSupplier'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isLogistics'),
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
                  name: NameNode(value: 'controlCode'),
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
                  name: NameNode(value: 'mail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
                        name: NameNode(value: 'sharedAppellationByAddress1'),
                        alias: NameNode(value: 'address1'),
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
                        name: NameNode(value: 'sharedAppellationByAddress2'),
                        alias: NameNode(value: 'address2'),
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
                        name: NameNode(value: 'sharedAppellationByBuilding'),
                        alias: NameNode(value: 'building'),
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
                  name: NameNode(value: 'mstrShippingKindId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mstrShippingKindByMstrShippingKindId'),
                  alias: NameNode(value: 'shippingKinds'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrShippingKindId'),
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
                        name: NameNode(value: 'names'),
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
                  name: NameNode(value: 'remarks'),
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
                  name: NameNode(value: 'updateAt'),
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
  ],
);
Query$SupplierPageRfe _parserFn$Query$SupplierPageRfe(
  Map<String, dynamic> data,
) => Query$SupplierPageRfe.fromJson(data);
typedef OnQueryComplete$Query$SupplierPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$SupplierPageRfe?);

class Options$Query$SupplierPageRfe
    extends graphql.QueryOptions<Query$SupplierPageRfe> {
  Options$Query$SupplierPageRfe({
    String? operationName,
    required Variables$Query$SupplierPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$SupplierPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQuerySupplierPageRfe,
         parserFn: _parserFn$Query$SupplierPageRfe,
       );

  final OnQueryComplete$Query$SupplierPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierPageRfe
    extends graphql.WatchQueryOptions<Query$SupplierPageRfe> {
  WatchOptions$Query$SupplierPageRfe({
    String? operationName,
    required Variables$Query$SupplierPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierPageRfe? typedOptimisticResult,
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
         document: documentNodeQuerySupplierPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierPageRfe,
       );
}

class FetchMoreOptions$Query$SupplierPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierPageRfe,
       );
}

extension ClientExtension$Query$SupplierPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierPageRfe>> query$SupplierPageRfe(
    Options$Query$SupplierPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SupplierPageRfe> watchQuery$SupplierPageRfe(
    WatchOptions$Query$SupplierPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierPageRfe({
    required Query$SupplierPageRfe data,
    required Variables$Query$SupplierPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerySupplierPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierPageRfe? readQuery$SupplierPageRfe({
    required Variables$Query$SupplierPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySupplierPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SupplierPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierPageRfe> useQuery$SupplierPageRfe(
  Options$Query$SupplierPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierPageRfe> useWatchQuery$SupplierPageRfe(
  WatchOptions$Query$SupplierPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierPageRfe$Widget
    extends graphql_flutter.Query<Query$SupplierPageRfe> {
  Query$SupplierPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$SupplierPageRfe options,
    required graphql_flutter.QueryBuilder<Query$SupplierPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId({
    required this.mstrStakeholderId,
    this.isCustomer,
    this.isSupplier,
    this.isLogistics,
    required this.code,
    this.controlCode,
    this.labels,
    this.mail,
    this.address,
    this.mstrShippingKindId,
    this.shippingKinds,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$isCustomer = json['isCustomer'];
    final l$isSupplier = json['isSupplier'];
    final l$isLogistics = json['isLogistics'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labels = json['labels'];
    final l$mail = json['mail'];
    final l$address = json['address'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$shippingKinds = json['shippingKinds'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      isCustomer: (l$isCustomer as bool?),
      isSupplier: (l$isSupplier as bool?),
      isLogistics: (l$isLogistics as bool?),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      labels: l$labels == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      mail: (l$mail as String?),
      address: l$address == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      shippingKinds: l$shippingKinds == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds.fromJson(
              (l$shippingKinds as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final bool? isCustomer;

  final bool? isSupplier;

  final bool? isLogistics;

  final String code;

  final String? controlCode;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels? labels;

  final String? mail;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address?
  address;

  final String? mstrShippingKindId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds?
  shippingKinds;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$isCustomer = isCustomer;
    _resultData['isCustomer'] = l$isCustomer;
    final l$isSupplier = isSupplier;
    _resultData['isSupplier'] = l$isSupplier;
    final l$isLogistics = isLogistics;
    _resultData['isLogistics'] = l$isLogistics;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$mail = mail;
    _resultData['mail'] = l$mail;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$shippingKinds = shippingKinds;
    _resultData['shippingKinds'] = l$shippingKinds?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$isCustomer = isCustomer;
    final l$isSupplier = isSupplier;
    final l$isLogistics = isLogistics;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labels = labels;
    final l$mail = mail;
    final l$address = address;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$shippingKinds = shippingKinds;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$isCustomer,
      l$isSupplier,
      l$isLogistics,
      l$code,
      l$controlCode,
      l$labels,
      l$mail,
      l$address,
      l$mstrShippingKindId,
      l$shippingKinds,
      l$remarks,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$updateAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$isCustomer = isCustomer;
    final lOther$isCustomer = other.isCustomer;
    if (l$isCustomer != lOther$isCustomer) {
      return false;
    }
    final l$isSupplier = isSupplier;
    final lOther$isSupplier = other.isSupplier;
    if (l$isSupplier != lOther$isSupplier) {
      return false;
    }
    final l$isLogistics = isLogistics;
    final lOther$isLogistics = other.isLogistics;
    if (l$isLogistics != lOther$isLogistics) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$mail = mail;
    final lOther$mail = other.mail;
    if (l$mail != lOther$mail) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$shippingKinds = shippingKinds;
    final lOther$shippingKinds = other.shippingKinds;
    if (l$shippingKinds != lOther$shippingKinds) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
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
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId instance,
    TRes Function(Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId)
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId;

  TRes call({
    String? mstrStakeholderId,
    bool? isCustomer,
    bool? isSupplier,
    bool? isLogistics,
    String? code,
    String? controlCode,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels? labels,
    String? mail,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address? address,
    String? mstrShippingKindId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds?
    shippingKinds,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<TRes>
  get labels;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
    TRes
  >
  get address;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
    TRes
  >
  get shippingKinds;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId _instance;

  final TRes Function(Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? isCustomer = _undefined,
    Object? isSupplier = _undefined,
    Object? isLogistics = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labels = _undefined,
    Object? mail = _undefined,
    Object? address = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? shippingKinds = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      isCustomer: isCustomer == _undefined
          ? _instance.isCustomer
          : (isCustomer as bool?),
      isSupplier: isSupplier == _undefined
          ? _instance.isSupplier
          : (isSupplier as bool?),
      isLogistics: isLogistics == _undefined
          ? _instance.isLogistics
          : (isLogistics as bool?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels?),
      mail: mail == _undefined ? _instance.mail : (mail as String?),
      address: address == _undefined
          ? _instance.address
          : (address
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address?),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      shippingKinds: shippingKinds == _undefined
          ? _instance.shippingKinds
          : (shippingKinds
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
    TRes
  >
  get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
    TRes
  >
  get shippingKinds {
    final local$shippingKinds = _instance.shippingKinds;
    return local$shippingKinds == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
            local$shippingKinds,
            (e) => call(shippingKinds: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderId,
    bool? isCustomer,
    bool? isSupplier,
    bool? isLogistics,
    String? code,
    String? controlCode,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels? labels,
    String? mail,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address? address,
    String? mstrShippingKindId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds?
    shippingKinds,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<TRes>
  get labels =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
    TRes
  >
  get address =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
    TRes
  >
  get shippingKinds =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels.fromJson(
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
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels,
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
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.address1,
    this.address2,
    this.building,
    this.phone,
    this.faxNumber,
    this.remarks,
    this.$__typename = 'InfoAddress',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$building = json['building'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      address1: l$address1 == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      building: l$building == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building.fromJson(
              (l$building as Map<String, dynamic>),
            ),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1?
  address1;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2?
  address2;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building?
  building;

  final String? phone;

  final String? faxNumber;

  final String? remarks;

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
    final l$building = building;
    _resultData['building'] = l$building?.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
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
    final l$building = building;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$address1,
      l$address2,
      l$building,
      l$phone,
      l$faxNumber,
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address ||
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
    final l$building = building;
    final lOther$building = other.building;
    if (l$building != lOther$building) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1?
    address1,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2?
    address2,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building?
    building,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
    TRes
  >
  get address1;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
    TRes
  >
  get address2;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
    TRes
  >
  get building;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? building = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
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
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2?),
      building: building == _undefined
          ? _instance.building
          : (building
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
    TRes
  >
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
    TRes
  >
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
    TRes
  >
  get building {
    final local$building = _instance.building;
    return local$building == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
            local$building,
            (e) => call(building: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1?
    address1,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2?
    address2,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building?
    building,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
    TRes
  >
  get address1 =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
    TRes
  >
  get address2 =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
    TRes
  >
  get building =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1 {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1.fromJson(
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
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1 ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1 {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1,
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
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2 {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2.fromJson(
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
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2 ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2 {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2,
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
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building.fromJson(
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
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building,
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
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$address$building$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds({
    required this.mstrShippingKindId,
    required this.code,
    required this.names,
    this.labels,
    this.remarks,
    this.$__typename = 'MstrShippingKind',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$code = json['code'];
    final l$names = json['names'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
      mstrShippingKindId: (l$mstrShippingKindId as String),
      code: (l$code as String),
      names: (l$names as String),
      labels: l$labels == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrShippingKindId;

  final String code;

  final String names;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels?
  labels;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$names = names;
    _resultData['names'] = l$names;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$code = code;
    final l$names = names;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrShippingKindId,
      l$code,
      l$names,
      l$labels,
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$names = names;
    final lOther$names = other.names;
    if (l$names != lOther$names) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds;

  TRes call({
    String? mstrShippingKindId,
    String? code,
    String? names,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels?
    labels,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? code = _undefined,
    Object? names = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
      mstrShippingKindId:
          mstrShippingKindId == _undefined || mstrShippingKindId == null
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      names: names == _undefined || names == null
          ? _instance.names
          : (names as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrShippingKindId,
    String? code,
    String? names,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels?
    labels,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels.fromJson(
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
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels
    on Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels,
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
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRfe$mstrStakeholderByMstrStakeholderId$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
