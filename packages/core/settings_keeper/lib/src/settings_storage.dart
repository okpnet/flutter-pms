import 'settings_memento.dart';

/// 設定の保存手段。アプリの方針に合わせて実装を差し替える。
///
/// GoFパターン: Strategy。標準で [FileSettingsStorage](JSONファイル)と
/// [InMemorySettingsStorage](保存しない)を持つ。レジストリ・DB・クラウド等は
/// アプリ側でこれを実装し、[settingsStorageProvider] を上書きする。
abstract interface class SettingsStorage {
  /// [key] の設定を読む。保存されていなければ null。
  /// 読めない(壊れている等)場合は [SettingsStorageException] を投げる。
  Future<SettingsMemento?> read(String key);

  Future<void> write(SettingsMemento memento);

  /// [key] の設定を消す。無くてもエラーにしない。
  Future<void> delete(String key);
}

/// 保存手段の失敗。[cause] に元の例外を持つ。
class SettingsStorageException implements Exception {
  const SettingsStorageException(this.message, {this.key, this.cause});

  final String message;
  final String? key;
  final Object? cause;

  Map<String, Object?> toJson() => {
    'message': message,
    'key': key,
    'cause': cause?.toString(),
  };

  @override
  String toString() =>
      'SettingsStorageException($message, key: $key, cause: $cause)';
}

final _validKey = RegExp(r'^[a-z0-9][a-z0-9_.-]*$');

/// [key] が保存先の名前として使えることを確かめる。使えなければ [SettingsStorageException]。
void validateSettingsKey(String key) {
  if (!_validKey.hasMatch(key) || key.contains('..')) {
    throw SettingsStorageException(
      '設定の識別子は英小文字・数字・_・-・. だけで、先頭は英小文字か数字にしてください',
      key: key,
    );
  }
}
