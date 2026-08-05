import 'package:dart_mappable/dart_mappable.dart';

part 'error_origin.mapper.dart';

@MappableEnum(mode: ValuesMode.named)
enum ErrorOrigin {
  databaseServer,
  authoricateServer,
  strageServer,
  graphqlServer,
  application,
  unknown,
}
