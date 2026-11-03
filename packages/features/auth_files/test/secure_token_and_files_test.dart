import 'dart:convert';
import 'dart:typed_data';

import 'package:auth_files/auth_files.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

class _RecordingLogger implements ILoggerProvider {
  final errors = <String>[];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

/// 失敗する保管庫(キーチェーンが使えない環境の再現)。
class _BrokenStorage implements FlutterSecureStorage {
  @override
  Future<String?> read({
    required String key,
    dynamic iOptions,
    dynamic aOptions,
    dynamic lOptions,
    dynamic webOptions,
    dynamic mOptions,
    dynamic wOptions,
  }) async => throw StateError('keystore unavailable');

  @override
  Future<void> write({
    required String key,
    required String? value,
    dynamic iOptions,
    dynamic aOptions,
    dynamic lOptions,
    dynamic webOptions,
    dynamic mOptions,
    dynamic wOptions,
  }) async => throw StateError('keystore unavailable');

  @override
  Future<void> delete({
    required String key,
    dynamic iOptions,
    dynamic aOptions,
    dynamic lOptions,
    dynamic webOptions,
    dynamic mOptions,
    dynamic wOptions,
  }) async => throw StateError('keystore unavailable');

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeSession implements SessionService {
  var loggedOut = 0;
  Object? failure;

  @override
  Future<void> logout() async {
    loggedOut++;
    if (failure != null) throw failure!;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _CountingStore implements ITokenStore {
  var deletes = 0;

  @override
  Future<String?> read() async => null;
  @override
  Future<void> write(String data) async {}
  @override
  Future<void> delete() async => deletes++;
}

void main() {
  group('SecureTokenStore(保管庫)', () {
    setUp(() => FlutterSecureStorage.setMockInitialValues({}));

    test('書いた値を読み戻せ、削除すると消える(未保存は null)', () async {
      final store = SecureTokenStore();
      expect(await store.read(), isNull);
      await store.write('{"token":"abc"}');
      expect(await store.read(), '{"token":"abc"}');
      await store.delete();
      expect(await store.read(), isNull);
    });

    test('キーは既定の名前で、別のキーの値と混ざらない', () async {
      FlutterSecureStorage.setMockInitialValues({'other': 'x'});
      final store = SecureTokenStore();
      expect(await store.read(), isNull);
      await store.write('v');
      expect(
        await const FlutterSecureStorage().read(
          key: SecureTokenStore.defaultKey,
        ),
        'v',
      );
      expect(await const FlutterSecureStorage().read(key: 'other'), 'x');
    });

    test('PbConnection の保存先として、ログイン情報を保管庫に残し、復元する', () async {
      final store = SecureTokenStore();
      // 有効期限つきの JWT(署名は検証されない)と利用者のレコード。
      String enc(Map<String, Object?> m) =>
          base64Url.encode(utf8.encode(jsonEncode(m))).replaceAll('=', '');
      final exp =
          DateTime.now().add(const Duration(days: 7)).millisecondsSinceEpoch ~/
          1000;
      final jwt = '${enc({'alg': 'HS256'})}.${enc({'exp': exp})}.sig';
      await store.write(
        jsonEncode({
          'token': jwt,
          'model': {
            'id': 'u1',
            'collectionId': 'c',
            'collectionName': 'users',
            'username': 'tanaka.t',
            'app_user_id': 'U0001',
          },
        }),
      );
      final connection = await PbConnection.open(
        url: 'http://192.168.1.103:8090',
        logger: const NoopLoggerProvider(),
        tokenStore: SecureTokenStore(),
      );
      expect(SessionService(connection).current?.username, 'tanaka.t');
    });

    test('保管庫が使えなくても例外にしない(読めなければ未ログイン、失敗はログへ。値は出さない)', () async {
      final logger = _RecordingLogger();
      final store = SecureTokenStore(storage: _BrokenStorage(), logger: logger);
      expect(await store.read(), isNull);
      await store.write('secret-value');
      await store.delete();
      expect(logger.errors, hasLength(3));
      expect(logger.errors.every((m) => m.startsWith('[auth_files]')), isTrue);
      expect(logger.errors.join(), isNot(contains('secret-value')));
    });

    test('toJson に保存する値は含まれない', () {
      expect(SecureTokenStore().toJson(), {
        'type': 'SecureTokenStore',
        'key': SecureTokenStore.defaultKey,
      });
    });
  });

  group('ファイルの選択・保存', () {
    PickedSource file(String name, Uint8List bytes) =>
        (name: name, size: bytes.length, read: () async => bytes);

    test('選んだファイルの名前と内容を返す。取り消しは null', () async {
      final picker = PlatformFilePicker(
        pickFile: () async => file('a.txt', Uint8List.fromList([1, 2, 3])),
      );
      final picked = await picker.pick();
      expect(picked!.name, 'a.txt');
      expect(picked.bytes, [1, 2, 3]);
      expect(
        await PlatformFilePicker(pickFile: () async => null).pick(),
        isNull,
      );
    });

    test('上限を超えるファイルは、内容を読む前に FileTooLargeException', () async {
      final picker = PlatformFilePicker(
        maxBytes: 2,
        pickFile: () async => file('big.bin', Uint8List(3)),
      );
      await expectLater(
        picker.pick(),
        throwsA(
          isA<FileTooLargeException>()
              .having((e) => e.sizeBytes, 'sizeBytes', 3)
              .having((e) => e.maxBytes, 'maxBytes', 2),
        ),
      );
      expect(PlatformFilePicker.defaultMaxBytes, 100 * 1024 * 1024);
    });

    test('保存: 保存先が決まれば true、取り消しは false。名前と内容を渡す', () async {
      final saved = <String>[];
      final saver = PlatformFileSaver(
        saveFile: (name, bytes) async {
          saved.add('$name/${bytes.length}');
          return Uri.file('/tmp/$name');
        },
      );
      expect(await saver.save('a.txt', Uint8List(4)), isTrue);
      expect(saved, ['a.txt/4']);
      expect(
        await PlatformFileSaver(
          saveFile: (_, _) async => null,
        ).save('a', Uint8List(1)),
        isFalse,
      );
    });

    test('既定は OS のダイアログ。未対応の代役(UnsupportedFileGateway)に差し替えられる', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      expect(
        container.read(filePickerGatewayProvider),
        isA<PlatformFilePicker>(),
      );
      expect(
        container.read(fileSaverGatewayProvider),
        isA<PlatformFileSaver>(),
      );
    });
  });

  group('authFilesSignOut(ログアウト)', () {
    late _FakeSession session;
    late _CountingStore store;
    late _RecordingLogger logger;
    late ProviderContainer container;

    setUp(() {
      session = _FakeSession();
      store = _CountingStore();
      logger = _RecordingLogger();
      container = ProviderContainer(
        overrides: [
          sessionServiceProvider.overrideWithValue(session),
          tokenStoreProvider.overrideWithValue(store),
          loggerProvider.overrideWithValue(logger),
        ],
      );
      addTearDown(container.dispose);
    });

    final signOut = Provider<Future<void> Function()>(
      (ref) =>
          () => authFilesSignOut(ref),
    );

    test('セッションと保管庫を破棄し、ログインユーザーの表示を消す', () async {
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'tanaka.t'));
      await container.read(signOut)();
      expect(session.loggedOut, 1);
      expect(store.deletes, 1);
      expect(container.read(userSummaryProvider), isNull);
      expect(logger.errors, isEmpty);
    });

    test('一部が失敗しても残りを続け、例外にしない(ログに残す)。何度呼んでも安全', () async {
      session.failure = StateError('boom');
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'x'));
      await container.read(signOut)();
      expect(store.deletes, 1, reason: 'セッションの破棄に失敗しても、保管庫は消す');
      expect(container.read(userSummaryProvider), isNull);
      expect(logger.errors, hasLength(1));
      expect(logger.errors.single, startsWith('[auth_files]'));
      await container.read(signOut)();
      expect(store.deletes, 2);
    });
  });
}
