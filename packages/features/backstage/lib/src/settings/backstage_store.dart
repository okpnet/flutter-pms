import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger_provider/logger_provider.dart';

/// 裏設定の保存先(JSON 文字列)。`ITokenStore`(pbapi)と同じ形。実体は差し替えられる(Strategy)。
abstract interface class IBackstageStore {
  /// 保存した値。無い・読めないときは null。
  Future<String?> read();

  /// 保存する。書けないときは例外。
  Future<void> write(String json);

  /// 消す。消せないときは例外。
  Future<void> delete();
}

/// メモリ上の保存先(テスト・保管庫を使わないとき)。
class InMemoryBackstageStore implements IBackstageStore {
  InMemoryBackstageStore([this.value]);

  String? value;

  @override
  Future<String?> read() async => value;

  @override
  Future<void> write(String json) async => value = json;

  @override
  Future<void> delete() async => value = null;
}

/// OS の安全な保管庫(`flutter_secure_storage`)に保存する。平文のファイル・`shared_preferences` は使わない。
/// アプリが削除されるまで続く。
///
/// 読めないときは「保存なし」として扱い、アプリは止めない。書けない・消せないときは、ログ(`[backstage]`)に
/// 残して例外を返す(画面が失敗を伝える)。保存する値(接続先など)はログに出さない。
class SecureBackstageStore implements IBackstageStore {
  SecureBackstageStore({
    FlutterSecureStorage? storage,
    this.key = defaultKey,
    ILoggerProvider? logger,
  }) : _storage = storage ?? const FlutterSecureStorage(),
       _logger = logger;

  static const defaultKey = 'pms.backstage.settings';

  final FlutterSecureStorage _storage;
  final String key;
  final ILoggerProvider? _logger;

  @override
  Future<String?> read() async {
    try {
      return await _storage.read(key: key);
    } catch (e, s) {
      _logger?.error('[backstage] 保管庫から裏設定を読めません', ex: e, trace: s);
      return null;
    }
  }

  @override
  Future<void> write(String json) async {
    try {
      await _storage.write(key: key, value: json);
    } catch (e, s) {
      _logger?.error('[backstage] 保管庫へ裏設定を書けません', ex: e, trace: s);
      rethrow;
    }
  }

  @override
  Future<void> delete() async {
    try {
      await _storage.delete(key: key);
    } catch (e, s) {
      _logger?.error('[backstage] 保管庫の裏設定を削除できません', ex: e, trace: s);
      rethrow;
    }
  }

  Map<String, Object?> toJson() => {'type': 'SecureBackstageStore', 'key': key};
}
