import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:pms_authenticator/storages/storage.dart';

part '../../../constant/storage_constant.dart';

/// 認証状態をストレージで管理するクラス
class KeycloakAuthStateHandler {
  final IStorageReaderWriter readerWriter;
  KeycloakAuthStateHandler({required this.readerWriter});

  /// ストレージから認証モデルを取得
  Future<AuthenticationModel?> getStoredAuthModel() async {
    final result = await readerWriter.read<AuthenticationModel>(
      StorageConstant.TOKEN_STORAGE_KEY,
    );
    return switch (result) {
      Success<AuthenticationModel>() => result.value,
      Failure<AuthenticationModel>() => null,
      Warning<AuthenticationModel>() => null,
    };
  }

  /// 認証モデルをストレージに保存
  Future<void> saveAuthModel(AuthenticationModel model) async {
    await readerWriter.write<AuthenticationModel>(
      StorageConstant.TOKEN_STORAGE_KEY,
      model,
    );
  }

  /// トークンが有効期限切れかどうかを確認
  bool isTokenExpired(AuthenticationModel model) {
    return model.isAccessTokenExpired == AuthStateType.authenticated;
  }

  /// ストレージから認証状態を削除
  Future<void> clearAuthState() async {
    await readerWriter.delete(StorageConstant.TOKEN_STORAGE_KEY);
  }

  /// トークン更新が必要かどうかを確認
  Future<bool> shouldRefreshToken() async {
    final model = await getStoredAuthModel();
    if (model == null) return false;
    return isTokenExpired(model);
  }

  /// ログアウト前の認証状態チェック
  Future<bool> isAuthenticatedForLogout() async {
    final model = await getStoredAuthModel();
    if (model == null) return false;
    return isTokenExpired(model);
  }
}
