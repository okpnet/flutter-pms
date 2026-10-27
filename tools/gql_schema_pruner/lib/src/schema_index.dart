import 'package:gql/ast.dart';

const builtinScalars = {'String', 'Int', 'Float', 'Boolean', 'ID'};

/// 型参照(`[Foo!]!` など)から名前だけを取り出す。
String namedType(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : namedType((t as ListTypeNode).type);

/// 本家スキーマの型定義を名前で引けるようにしたもの(Index)。
class SchemaIndex {
  SchemaIndex(DocumentNode full) {
    for (final d in full.definitions) {
      if (d is SchemaDefinitionNode) {
        for (final o in d.operationTypes) {
          rootTypes[o.operation] = o.type.name.value;
        }
      } else if (d is ObjectTypeDefinitionNode) {
        objects[d.name.value] = d;
      } else if (d is InterfaceTypeDefinitionNode) {
        interfaces[d.name.value] = d;
      } else if (d is InputObjectTypeDefinitionNode) {
        inputs[d.name.value] = d;
      } else if (d is EnumTypeDefinitionNode) {
        enums[d.name.value] = d;
      } else if (d is ScalarTypeDefinitionNode) {
        scalars.add(d.name.value);
      } else if (d is UnionTypeDefinitionNode) {
        unions[d.name.value] = d;
      }
    }
    rootTypes.putIfAbsent(OperationType.query, () => 'Query');
    rootTypes.putIfAbsent(OperationType.mutation, () => 'Mutation');
  }

  final rootTypes = <OperationType, String>{};
  final objects = <String, ObjectTypeDefinitionNode>{};
  final interfaces = <String, InterfaceTypeDefinitionNode>{};
  final inputs = <String, InputObjectTypeDefinitionNode>{};
  final enums = <String, EnumTypeDefinitionNode>{};
  final unions = <String, UnionTypeDefinitionNode>{};
  final scalars = <String>{};

  /// 型名がスキーマ(組み込みスカラーを含む)に存在するか。
  bool hasType(String name) =>
      builtinScalars.contains(name) ||
      objects.containsKey(name) ||
      interfaces.containsKey(name) ||
      inputs.containsKey(name) ||
      enums.containsKey(name) ||
      unions.containsKey(name) ||
      scalars.contains(name);

  bool isObjectLike(String name) =>
      objects.containsKey(name) || interfaces.containsKey(name);

  FieldDefinitionNode? fieldOf(String typeName, String field) {
    final fields = objects[typeName]?.fields ?? interfaces[typeName]?.fields;
    if (fields == null) return null;
    for (final f in fields) {
      if (f.name.value == field) return f;
    }
    return null;
  }

  /// 入力型のうち、入れ子の入力型を持たないもの(BooleanFilter など)。
  bool isLeafInput(String name) {
    final def = inputs[name];
    if (def == null) return false;
    for (final f in def.fields) {
      if (inputs.containsKey(namedType(f.type))) return false;
    }
    return true;
  }
}
