import 'dart:typed_data';

import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:pbapi/pbapi.dart';

/// ログイン後の遷移先(ダッシュボード)の代役。app_core の実装には依存しない。
class _StubDashboardModule implements FeatureModule {
  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: '/dashboard',
      builder: (_, _) => const Scaffold(body: Text('ダッシュボード')),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      destination is DashboardDestination ? '/dashboard' : null;

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}

class _FakeSession implements SessionService {
  PbException? failure;
  final logins = <String>[];

  @override
  Future<AuthSession> login(String identity, String password) async {
    logins.add('$identity/$password');
    if (failure != null) throw failure!;
    return AuthSession(
      token: 'secret-token',
      userId: 'u1',
      username: identity,
      appUserId: 'U0001',
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeAccount implements AccountService {
  final accepted = <Map<String, String>>[];
  final resets = <String>[];
  final signups = <String>[];
  final profiles = <Map<String, Object?>?>[];
  PbException? acceptFailure;
  PbException? signupFailure;

  @override
  Future<void> acceptCode({
    required String username,
    required String code,
    required String password,
  }) async {
    if (acceptFailure != null) throw acceptFailure!;
    accepted.add({'username': username, 'code': code, 'password': password});
  }

  @override
  Future<void> requestPasswordReset(String identity) async {
    resets.add(identity);
  }

  @override
  Future<void> requestSignup({
    required String fullName,
    String? requestedUsername,
    String? contactEmail,
    Map<String, Object?>? profile,
    String? note,
  }) async {
    if (signupFailure != null) throw signupFailure!;
    signups.add('$fullName/$requestedUsername/$contactEmail');
    profiles.add(profile);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeFiles implements SharedFileService {
  final uploads = <String>[];
  final stored = <StoredFile>[];

  @override
  Future<StoredFile> upload({
    required String appFileId,
    required Uint8List bytes,
    required String filename,
    String? mimeType,
    String? comment,
  }) async {
    uploads.add('$appFileId/$filename');
    final file = StoredFile(
      recordId: 'r${stored.length + 1}',
      appFileId: appFileId,
      revision: stored.length + 1,
      originalName: filename,
      sizeBytes: bytes.length,
      mimeType: mimeType ?? '',
    );
    stored.add(file);
    return file;
  }

  @override
  Future<List<StoredFile>> history(String appFileId) async =>
      stored.reversed.toList();

  @override
  Future<DownloadedFile?> download(String appFileId, {int? revision}) async =>
      DownloadedFile(file: stored.last, bytes: Uint8List.fromList([1, 2, 3]));

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Picker implements IFilePickerGateway {
  @override
  Future<PickedFile?> pick() async =>
      PickedFile(name: 'a.txt', bytes: Uint8List.fromList([1, 2]));
}

class _Saver implements IFileSaverGateway {
  final saved = <String>[];

  @override
  Future<bool> save(String filename, Uint8List bytes) async {
    saved.add(filename);
    return true;
  }
}

Future<void> _pump(
  WidgetTester tester,
  PageDestination<Object?> start,
  List<Override> overrides,
) async {
  await tester.binding.setSurfaceSize(const Size(900, 1400));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      title: 'AuthFiles',
      modules: [const AuthFilesModule(), _StubDashboardModule()],
      entries: [FeatureHostEntry('開く', start)],
      overrides: overrides,
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('開く'));
  await tester.pumpAndSettle();
}

void main() {
  const module = AuthFilesModule();

  test('見本の遷移先はすべてパスに変換できる(登録漏れ検出)', () {
    for (final d in authFilesDestinationSamples) {
      expect(module.locationOf(d), isNotNull, reason: '$d');
    }
    expect(module.locationOf(const LoginDestination()), '/auth/login');
    expect(module.locationOf(const SignupDestination()), '/auth/register');
    expect(
      module.locationOf(const PasswordResetRequestDestination()),
      '/auth/forgot',
    );
    expect(
      module.locationOf(const AcceptCodeDestination()),
      '/auth/forgot/code',
    );
    expect(
      module.locationOf(const NewPasswordDestination()),
      '/auth/forgot/reset',
    );
    expect(module.locationOf(const DashboardDestination()), isNull);
  });

  group('ログイン', () {
    testWidgets('成功: ユーザーの表示を更新してダッシュボードへ進む', (tester) async {
      final session = _FakeSession();
      await _pump(tester, const LoginDestination(), [
        sessionServiceProvider.overrideWithValue(session),
      ]);
      await tester.enterText(find.byType(TextField).at(0), 'yamada');
      await tester.enterText(find.byType(TextField).at(1), 'password1');
      await tester.tap(find.text('ログイン'));
      await tester.pumpAndSettle();

      expect(session.logins, ['yamada/password1']);
      expect(find.text('ダッシュボード'), findsOneWidget);
      final container = ProviderScope.containerOf(
        tester.element(find.byType(Scaffold).first),
      );
      expect(container.read(userSummaryProvider)?.name, 'yamada');
    });

    testWidgets('失敗: 理由に応じた文言を出し、画面に留まる', (tester) async {
      final session = _FakeSession()
        ..failure = const PbException(PbFailureKind.invalidCredentials);
      await _pump(tester, const LoginDestination(), [
        sessionServiceProvider.overrideWithValue(session),
      ]);
      await tester.enterText(find.byType(TextField).at(0), 'yamada');
      await tester.enterText(find.byType(TextField).at(1), 'bad');
      await tester.tap(find.text('ログイン'));
      await tester.pumpAndSettle();

      expect(find.text('ユーザーIDまたはパスワードが正しくありません。'), findsOneWidget);
      expect(find.text('ダッシュボード'), findsNothing);
    });

    testWidgets('未入力は項目ごとに「入力してください。」を出し、通信しない', (tester) async {
      final session = _FakeSession();
      await _pump(tester, const LoginDestination(), [
        sessionServiceProvider.overrideWithValue(session),
      ]);
      await tester.tap(find.text('ログイン'));
      await tester.pumpAndSettle();
      expect(session.logins, isEmpty);
      expect(find.text('入力してください。'), findsNWidgets(2));
      expect(find.text('必須'), findsNWidgets(2));
    });

    testWidgets('リンク: パスワードを忘れたへ進める', (tester) async {
      await _pump(tester, const LoginDestination(), [
        sessionServiceProvider.overrideWithValue(_FakeSession()),
      ]);
      await tester.tap(find.text('パスワードを忘れた'));
      await tester.pumpAndSettle();
      expect(find.text('ユーザーIDまたはメールアドレス'), findsOneWidget);
    });
  });

  group('新規登録', () {
    Future<void> fill(WidgetTester tester, {String userId = 'yamada.t'}) async {
      await tester.enterText(find.byType(TextField).at(0), userId);
      await tester.enterText(find.byType(TextField).at(1), 'y@example.com');
      await tester.enterText(find.byType(TextField).at(2), '山田 太郎');
      await tester.enterText(find.byType(TextField).at(3), 'やまだ たろう');
    }

    testWidgets('申請すると、受け付けた表示になる(ふりがなは本人情報に入る)', (tester) async {
      final account = _FakeAccount();
      await _pump(tester, const SignupDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await fill(tester);
      await tester.tap(find.text('送信'));
      await tester.pumpAndSettle();
      expect(account.signups, ['山田 太郎/yamada.t/y@example.com']);
      expect(account.profiles.single, {'ruby': 'やまだ たろう'});
      expect(find.text('申請を受け付けました'), findsOneWidget);
    });

    testWidgets('形式の誤りは項目ごとに示し、通信しない', (tester) async {
      final account = _FakeAccount();
      await _pump(tester, const SignupDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await fill(tester, userId: 'ab');
      await tester.enterText(find.byType(TextField).at(1), 'not-mail');
      await tester.enterText(find.byType(TextField).at(3), 'Yamada');
      await tester.tap(find.text('送信'));
      await tester.pumpAndSettle();
      expect(account.signups, isEmpty);
      expect(find.textContaining('4〜32文字'), findsOneWidget);
      expect(find.textContaining('メールアドレスの形式'), findsOneWidget);
      expect(find.textContaining('ひらがな・カタカナ'), findsOneWidget);
    });

    testWidgets('受付停止(503)は文言にして、入力は残す', (tester) async {
      final account = _FakeAccount()
        ..signupFailure = const PbException(PbFailureKind.unavailable);
      await _pump(tester, const SignupDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await fill(tester);
      await tester.tap(find.text('送信'));
      await tester.pumpAndSettle();
      expect(find.textContaining('現在受け付けていません'), findsOneWidget);
      expect(find.text('山田 太郎'), findsOneWidget);
    });
  });

  group('パスワードを忘れた → 認証コード → 新しいパスワード', () {
    Future<void> toCodePage(WidgetTester tester, String who) async {
      await tester.enterText(find.byType(TextField).first, who);
      await tester.tap(find.text('送信'));
      await tester.pumpAndSettle();
    }

    Future<void> enterCode(WidgetTester tester, String code) async {
      await tester.enterText(find.byType(TextField).at(1), code);
      await tester.tap(find.text('確認'));
      await tester.pumpAndSettle();
    }

    testWidgets('依頼 → コード → 新パスワード → ログインに完了の案内', (tester) async {
      final account = _FakeAccount();
      await _pump(tester, const PasswordResetRequestDestination(), [
        accountServiceProvider.overrideWithValue(account),
        sessionServiceProvider.overrideWithValue(_FakeSession()),
      ]);
      await toCodePage(tester, 'yamada');
      expect(account.resets, ['yamada']);
      // 入力したユーザーIDが引き継がれる
      expect(find.text('認証コードの入力'), findsOneWidget);
      expect(find.text('yamada'), findsOneWidget);

      await enterCode(tester, 'abcd-efgh jklm');
      expect(find.text('新しいパスワード'), findsWidgets);
      await tester.enterText(find.byType(TextField).at(0), 'password-1');
      await tester.enterText(find.byType(TextField).at(1), 'password-1');
      await tester.tap(find.text('パスワードを再設定'));
      await tester.pumpAndSettle();

      // ハイフン・空白を除いて送る(大文字小文字はサーバーが区別しない)
      expect(account.accepted, [
        {'username': 'yamada', 'code': 'abcdefghjklm', 'password': 'password-1'},
      ]);
      expect(find.textContaining('パスワードを再設定しました'), findsOneWidget);
      expect(find.text('生産管理にサインイン'), findsOneWidget);
    });

    testWidgets('メールで依頼したときは、ユーザーIDを入力してもらう', (tester) async {
      final account = _FakeAccount();
      await _pump(tester, const PasswordResetRequestDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await toCodePage(tester, 'yamada@example.com');
      expect(account.resets, ['yamada@example.com']);
      expect(
        tester.widget<TextField>(find.byType(TextField).at(0)).controller!.text,
        isEmpty,
      );
    });

    testWidgets('コードの形式が違うときは先へ進めない', (tester) async {
      await _pump(tester, const AcceptCodeDestination(), [
        accountServiceProvider.overrideWithValue(_FakeAccount()),
      ]);
      await tester.enterText(find.byType(TextField).at(0), 'yamada');
      await enterCode(tester, 'XXXX');
      expect(find.textContaining('12文字'), findsWidgets);
      expect(find.text('新しいパスワード'), findsNothing);
    });

    testWidgets('パスワードが短い・一致しないときは通信しない', (tester) async {
      final account = _FakeAccount();
      await _pump(tester, const AcceptCodeDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await tester.enterText(find.byType(TextField).at(0), 'yamada');
      await enterCode(tester, 'ABCD-EFGH-JKLM');
      await tester.enterText(find.byType(TextField).at(0), 'short');
      await tester.enterText(find.byType(TextField).at(1), 'different');
      await tester.tap(find.text('パスワードを再設定'));
      await tester.pumpAndSettle();
      expect(account.accepted, isEmpty);
      expect(find.text('パスワードは8文字以上にしてください。'), findsOneWidget);
      expect(find.text('新しいパスワードと同じ値を入力してください。'), findsOneWidget);
    });

    testWidgets('コードの誤りは理由を区別せず同じ文言にする', (tester) async {
      final account = _FakeAccount()
        ..acceptFailure = const PbException(PbFailureKind.validation);
      await _pump(tester, const AcceptCodeDestination(), [
        accountServiceProvider.overrideWithValue(account),
      ]);
      await tester.enterText(find.byType(TextField).at(0), 'yamada');
      await enterCode(tester, 'ABCD-EFGH-JKLM');
      await tester.enterText(find.byType(TextField).at(0), 'password-1');
      await tester.enterText(find.byType(TextField).at(1), 'password-1');
      await tester.tap(find.text('パスワードを再設定'));
      await tester.pumpAndSettle();
      expect(
        find.text('ユーザーIDまたはコードが正しくないか、有効期限が切れています。'),
        findsOneWidget,
      );
      expect(find.text('生産管理にサインイン'), findsNothing);
    });

    testWidgets('コードが無いまま新しいパスワードを開くと、認証コードの入力へ戻す', (tester) async {
      await _pump(tester, const NewPasswordDestination(), [
        accountServiceProvider.overrideWithValue(_FakeAccount()),
      ]);
      expect(find.text('認証コードの入力'), findsOneWidget);
    });
  });

  group('共有ファイル', () {
    testWidgets('不正なIDは通信しない', (tester) async {
      final files = _FakeFiles();
      await _pump(tester, const SharedFilesDestination(), [
        sharedFileServiceProvider.overrideWithValue(files),
        filePickerGatewayProvider.overrideWithValue(_Picker()),
      ]);
      await tester.enterText(find.byType(TextField).first, 'bad id!');
      await tester.tap(find.text('アップロード'));
      await tester.pumpAndSettle();
      expect(files.uploads, isEmpty);
      expect(find.textContaining('ファイルIDは英数字'), findsOneWidget);
    });

    testWidgets('アップロードすると版が増え、履歴からダウンロードできる', (tester) async {
      final files = _FakeFiles();
      final saver = _Saver();
      await _pump(tester, const SharedFilesDestination(), [
        sharedFileServiceProvider.overrideWithValue(files),
        filePickerGatewayProvider.overrideWithValue(_Picker()),
        fileSaverGatewayProvider.overrideWithValue(saver),
      ]);
      await tester.enterText(find.byType(TextField).first, 'doc-1');
      await tester.tap(find.text('アップロード'));
      await tester.pumpAndSettle();
      expect(files.uploads, ['doc-1/a.txt']);
      expect(find.text('アップロードしました(版 1)。'), findsOneWidget);
      expect(find.text('a.txt'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.download));
      await tester.pumpAndSettle();
      expect(saver.saved, ['a.txt']);
      expect(find.text('保存しました。'), findsOneWidget);
    });

    testWidgets('ファイルの選択が使えない環境では文言を出す', (tester) async {
      final files = _FakeFiles();
      await _pump(tester, const SharedFilesDestination(), [
        sharedFileServiceProvider.overrideWithValue(files),
      ]);
      await tester.enterText(find.byType(TextField).first, 'doc-1');
      await tester.tap(find.text('アップロード'));
      await tester.pumpAndSettle();
      expect(find.text('この環境ではファイルを選択・保存できません。'), findsOneWidget);
    });
  });
}
