import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ManufacturePageRfe {
  factory Variables$Query$ManufacturePageRfe({
    required String mstrManufacturerId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$ManufacturePageRfe._({
    r'mstrManufacturerId': mstrManufacturerId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$ManufacturePageRfe._(this._$data);

  factory Variables$Query$ManufacturePageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = data['mstrManufacturerId'];
    result$data['mstrManufacturerId'] = (l$mstrManufacturerId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$ManufacturePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrManufacturerId => (_$data['mstrManufacturerId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    result$data['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$ManufacturePageRfe<
    Variables$Query$ManufacturePageRfe
  >
  get copyWith => CopyWith$Variables$Query$ManufacturePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ManufacturePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrManufacturerId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ManufacturePageRfe<TRes> {
  factory CopyWith$Variables$Query$ManufacturePageRfe(
    Variables$Query$ManufacturePageRfe instance,
    TRes Function(Variables$Query$ManufacturePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ManufacturePageRfe;

  factory CopyWith$Variables$Query$ManufacturePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ManufacturePageRfe;

  TRes call({
    String? mstrManufacturerId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$ManufacturePageRfe<TRes>
    implements CopyWith$Variables$Query$ManufacturePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ManufacturePageRfe(this._instance, this._then);

  final Variables$Query$ManufacturePageRfe _instance;

  final TRes Function(Variables$Query$ManufacturePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$ManufacturePageRfe._({
      ..._instance._$data,
      if (mstrManufacturerId != _undefined && mstrManufacturerId != null)
        'mstrManufacturerId': (mstrManufacturerId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ManufacturePageRfe<TRes>
    implements CopyWith$Variables$Query$ManufacturePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ManufacturePageRfe(this._res);

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$ManufacturePageRfe {
  Query$ManufacturePageRfe({
    this.mstrManufacturerByMstrManufacturerId,
    this.$__typename = 'Query',
  });

  factory Query$ManufacturePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrManufacturerByMstrManufacturerId =
        json['mstrManufacturerByMstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe(
      mstrManufacturerByMstrManufacturerId:
          l$mstrManufacturerByMstrManufacturerId == null
          ? null
          : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId.fromJson(
              (l$mstrManufacturerByMstrManufacturerId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId?
  mstrManufacturerByMstrManufacturerId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    _resultData['mstrManufacturerByMstrManufacturerId'] =
        l$mstrManufacturerByMstrManufacturerId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerByMstrManufacturerId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ManufacturePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final lOther$mstrManufacturerByMstrManufacturerId =
        other.mstrManufacturerByMstrManufacturerId;
    if (l$mstrManufacturerByMstrManufacturerId !=
        lOther$mstrManufacturerByMstrManufacturerId) {
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

extension UtilityExtension$Query$ManufacturePageRfe
    on Query$ManufacturePageRfe {
  CopyWith$Query$ManufacturePageRfe<Query$ManufacturePageRfe> get copyWith =>
      CopyWith$Query$ManufacturePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ManufacturePageRfe<TRes> {
  factory CopyWith$Query$ManufacturePageRfe(
    Query$ManufacturePageRfe instance,
    TRes Function(Query$ManufacturePageRfe) then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe;

  factory CopyWith$Query$ManufacturePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ManufacturePageRfe;

  TRes call({
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<TRes>
  get mstrManufacturerByMstrManufacturerId;
}

class _CopyWithImpl$Query$ManufacturePageRfe<TRes>
    implements CopyWith$Query$ManufacturePageRfe<TRes> {
  _CopyWithImpl$Query$ManufacturePageRfe(this._instance, this._then);

  final Query$ManufacturePageRfe _instance;

  final TRes Function(Query$ManufacturePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerByMstrManufacturerId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe(
      mstrManufacturerByMstrManufacturerId:
          mstrManufacturerByMstrManufacturerId == _undefined
          ? _instance.mstrManufacturerByMstrManufacturerId
          : (mstrManufacturerByMstrManufacturerId
                as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<TRes>
  get mstrManufacturerByMstrManufacturerId {
    final local$mstrManufacturerByMstrManufacturerId =
        _instance.mstrManufacturerByMstrManufacturerId;
    return local$mstrManufacturerByMstrManufacturerId == null
        ? CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
            local$mstrManufacturerByMstrManufacturerId,
            (e) => call(mstrManufacturerByMstrManufacturerId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe<TRes>
    implements CopyWith$Query$ManufacturePageRfe<TRes> {
  _CopyWithStubImpl$Query$ManufacturePageRfe(this._res);

  TRes _res;

  call({
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<TRes>
  get mstrManufacturerByMstrManufacturerId =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId.stub(
        _res,
      );
}

const documentNodeQueryManufacturePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ManufacturePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrManufacturerId')),
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
            name: NameNode(value: 'mstrManufacturerByMstrManufacturerId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrManufacturerId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrManufacturerId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrManufacturerId'),
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                          value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
Query$ManufacturePageRfe _parserFn$Query$ManufacturePageRfe(
  Map<String, dynamic> data,
) => Query$ManufacturePageRfe.fromJson(data);
typedef OnQueryComplete$Query$ManufacturePageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ManufacturePageRfe?,
);

class Options$Query$ManufacturePageRfe
    extends graphql.QueryOptions<Query$ManufacturePageRfe> {
  Options$Query$ManufacturePageRfe({
    String? operationName,
    required Variables$Query$ManufacturePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ManufacturePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ManufacturePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ManufacturePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryManufacturePageRfe,
         parserFn: _parserFn$Query$ManufacturePageRfe,
       );

  final OnQueryComplete$Query$ManufacturePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ManufacturePageRfe
    extends graphql.WatchQueryOptions<Query$ManufacturePageRfe> {
  WatchOptions$Query$ManufacturePageRfe({
    String? operationName,
    required Variables$Query$ManufacturePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ManufacturePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryManufacturePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ManufacturePageRfe,
       );
}

class FetchMoreOptions$Query$ManufacturePageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ManufacturePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ManufacturePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryManufacturePageRfe,
       );
}

extension ClientExtension$Query$ManufacturePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ManufacturePageRfe>>
  query$ManufacturePageRfe(Options$Query$ManufacturePageRfe options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$ManufacturePageRfe>
  watchQuery$ManufacturePageRfe(
    WatchOptions$Query$ManufacturePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ManufacturePageRfe({
    required Query$ManufacturePageRfe data,
    required Variables$Query$ManufacturePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryManufacturePageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ManufacturePageRfe? readQuery$ManufacturePageRfe({
    required Variables$Query$ManufacturePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryManufacturePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ManufacturePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ManufacturePageRfe>
useQuery$ManufacturePageRfe(Options$Query$ManufacturePageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ManufacturePageRfe>
useWatchQuery$ManufacturePageRfe(
  WatchOptions$Query$ManufacturePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ManufacturePageRfe$Widget
    extends graphql_flutter.Query<Query$ManufacturePageRfe> {
  Query$ManufacturePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ManufacturePageRfe options,
    required graphql_flutter.QueryBuilder<Query$ManufacturePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId({
    required this.mstrManufacturerId,
    this.code,
    this.labels,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrManufacturer',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      code: (l$code as String?),
      labels: l$labels == null
          ? null
          : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final String? code;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels?
  labels;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$code = code;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
      l$code,
      l$labels,
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
    if (other
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId
    on Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId instance,
    TRes Function(Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId)
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId;

  TRes call({
    String? mstrManufacturerId,
    String? code,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels?
    labels,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels?),
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

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? code,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels?
    labels,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels.stub(
        _res,
      );
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels.fromJson(
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
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels
    on Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels,
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
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ManufacturePageRfe$mstrManufacturerByMstrManufacturerId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
