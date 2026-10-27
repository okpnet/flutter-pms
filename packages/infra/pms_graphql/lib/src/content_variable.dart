// content_variable.dart
//
// 要件0032: [GraphQL変換ルール]「GraphQLに変換したときの列の型は、Enumとして
// GraphQLTypeKindに重複せずに追加する」に対応する。
// - GraphQLTypeKindは実スキーマ(lib/graphql/schema.graphql)の型名を値として持ち、
//   文字列として型を受け取り、文字列からEnumへ復元できる。
// - 新しい型が必要になったときだけ、既存のvalueと重複しないように追加する。
//
// 各"##見出し"のKeyName抽象クラス(lib/contents/*_keyname.dart)は、この
// ContentVariableを使って「平坦化キー名(name)」と「GraphQLの型(kind)」を
// ペアで定数として持つ。

/// PostGraphile(GraphQL)スキーマにおける列の型の種類。
enum GraphQLTypeKind {
  string('String'),
  int('Int'),
  float('Float'),
  boolean('Boolean'),
  uuid('UUID'),
  datetime('Datetime'),
  date('Date'),
  bigInt('BigInt'),
  bigFloat('BigFloat'),
  json('JSON'),

  /// Postgresの`interval`型に対応するGraphQLの`Interval`型。
  interval('Interval'),

  /// Relay Connection形状(1対多リレーション、`nodes`/`edges`を持つ)のオブジェクト
  /// そのもの。nested_map_flattener.dartはこの形状を再帰的にフラット化しないため、
  /// キー定数の値もこの階層までで止める。
  connection('Connection');

  final String value;
  const GraphQLTypeKind(this.value);

  /// [value]と一致するGraphQLTypeKindへ復元する。一致しない場合はArgumentError。
  static GraphQLTypeKind fromString(String value) => values.firstWhere(
    (kind) => kind.value == value,
    orElse: () => throw ArgumentError('Unknown GraphQLTypeKind: $value'),
  );

  @override
  String toString() => value;
}

/// 平坦化キー名([name])とGraphQLの型([kind])のペア。
///
/// [name]は nested_map_flattener.dart で平坦化したときのキー文字列
/// (`kFlatKeySeparator` = `||` 区切り)そのもの。
class ContentVariable {
  final String name;
  final GraphQLTypeKind kind;
  const ContentVariable(this.name, this.kind);

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentVariable && other.name == name && other.kind == kind);

  @override
  int get hashCode => Object.hash(name, kind);
}
