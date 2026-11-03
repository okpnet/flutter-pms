import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

/// ログイン情報(PocketBase のトークンとユーザー)を、OS の安全な保管庫に保存する [ITokenStore]。
///
/// `flutter_secure_storage` を使う(Windows は資格情報の保護、Android は Keystore、macOS・iOS は
/// Keychain)。`shared_preferences` のような平文の保存は使わない。
///
/// 保管庫が使えなくても、アプリは止めない。読めなければ未ログインとして扱い、書けなくても
/// ログインはメモリ上で続く(次の起動でログインし直す)。失敗は `[auth_files]` 付きで残し、
/// 保存する値・トークンはログに出さない。
///
/// パターン: Strategy(`ITokenStore` の保管庫による実装)
class SecureTokenStore implements ITokenStore {
  SecureTokenStore({
    FlutterSecureStorage? storage,
    this.key = defaultKey,
    ILoggerProvider? logger,
  }) : _storage = storage ?? const FlutterSecureStorage(),
       _logger = logger;

  /// 保管庫のキー。
  static const defaultKey = 'pms.pocketbase.auth';

  final FlutterSecureStorage _storage;
  final String key;
  final ILoggerProvider? _logger;

  @override
  Future<String?> read() async {
    try {
      return await _storage.read(key: key);
    } catch (e, s) {
      _logger?.error('[auth_files] 保管庫からログイン情報を読めません', ex: e, trace: s);
      return null;
    }
  }

  @override
  Future<void> write(String data) async {
    try {
      await _storage.write(key: key, value: data);
    } catch (e, s) {
      _logger?.error('[auth_files] 保管庫へログイン情報を書けません', ex: e, trace: s);
    }
  }

  @override
  Future<void> delete() async {
    try {
      await _storage.delete(key: key);
    } catch (e, s) {
      _logger?.error('[auth_files] 保管庫のログイン情報を削除できません', ex: e, trace: s);
    }
  }

  Map<String, Object?> toJson() => {'type': 'SecureTokenStore', 'key': key};
}

/// ログイン情報の保存先。既定は [SecureTokenStore]。アプリは `PbConnection.open` に同じものを渡し、
/// ここも上書きして共有する(ログアウトで保管庫を確実に消すため)。
final tokenStoreProvider = Provider<ITokenStore>(
  (ref) => SecureTokenStore(logger: ref.watch(loggerProvider)),
);
