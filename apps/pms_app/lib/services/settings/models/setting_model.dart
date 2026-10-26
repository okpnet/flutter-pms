import 'package:dart_mappable/dart_mappable.dart';

part 'setting_model.mapper.dart';

@MappableClass()
class SettingModel with SettingModelMappable {
  final int fetchLimit;

  SettingModel({this.fetchLimit = 100});
}
