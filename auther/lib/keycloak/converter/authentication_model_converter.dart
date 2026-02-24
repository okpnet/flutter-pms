import 'package:auther_controller/core/auth_model/authentication_model.dart';
import 'package:auther_controller/storages/storage.dart';

class AuthenticationModelConverter
    implements StorageTypeConverter<AuthenticationModel> {
  @override
  AuthenticationModel convertFromString(String data) {
    return AuthenticationModelMapper.fromJson(data);
  }

  @override
  String convertToString(AuthenticationModel item) {
    return item.toJson();
  }
}
