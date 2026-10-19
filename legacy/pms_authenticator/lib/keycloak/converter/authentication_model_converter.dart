import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/storages/storage.dart';

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
