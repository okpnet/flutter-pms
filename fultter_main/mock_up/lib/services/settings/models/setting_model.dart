import 'package:dart_mappable/dart_mappable.dart';

part 'setting_model.mapper.dart';

@MappableClass()
class SettingModel with SettingModelMappable {
  final int maxResults;

  SettingModel({this.maxResults = 100});
}
