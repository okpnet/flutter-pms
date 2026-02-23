import 'package:auther/core/auth_model/authentication_model.dart';
import 'package:auther/storages/converter/storage_item_converter.dart';

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
