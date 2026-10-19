import 'package:pms_graphql_lib/edit_models/iedit_model.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'user_edit_model.mapper.dart';

@MappableClass()
class UserEditModel with UserEditModelMappable implements IEditModel {
  int id;

  String name;

  String email;

  String gender;

  String status;
  @override
  bool get isNew => id == 0;

  UserEditModel({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
  });

  @override
  // TODO: implement isValid
  bool get isValid {
    if (isNew) {
      return name.isNotEmpty &&
          email.isNotEmpty &&
          gender.isNotEmpty &&
          status.isNotEmpty;
    }
    return id > 0 &&
        name.isNotEmpty &&
        email.isNotEmpty &&
        gender.isNotEmpty &&
        status.isNotEmpty;
  }
}
