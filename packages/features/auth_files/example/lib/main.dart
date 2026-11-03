import 'dart:typed_data';

import 'package:app_core/app_core_api.dart';
import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 認証と共有ファイル(auth_files)を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// PocketBase には接続しない。`pbapi` のサービスを、メモリ上の代役に差し替えている:
///   - ログイン: パスワードが [examplePassword] のとき成功。それ以外は「ユーザーIDまたはパスワードが違う」
///   - 新規登録の申請・認証コード・再設定: 常に成功(コードは [exampleCode])
///   - 共有ファイル: メモリ上に版を積む。管理者の2画面には見本の申請を出す
/// ログイン後の遷移先(ダッシュボード)は、見本の画面。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, this.themeOf});

  final ILoggerProvider logger;

  /// テーマの差し替え(テストで波紋のシェーダーを使わないため)。省略時は theme_lib の明るいテーマ。
  final ThemeData Function(WidgetRef ref)? themeOf;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '認証と共有ファイル (example)',
    modules: const [AuthFilesModule(), _DashboardModule()],
    entries: const [
      FeatureHostEntry('ログイン', LoginDestination()),
      FeatureHostEntry('新規登録', SignupDestination()),
      FeatureHostEntry('パスワードを忘れた', PasswordResetRequestDestination()),
      FeatureHostEntry('認証コードの入力', AcceptCodeDestination()),
      FeatureHostEntry('新しいパスワード', NewPasswordDestination()),
      FeatureHostEntry('共有ファイル', SharedFilesDestination()),
      FeatureHostEntry('新規登録の管理', AdminSignupsDestination()),
      FeatureHostEntry('再設定依頼の管理', AdminResetsDestination()),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      sessionServiceProvider.overrideWithValue(ExampleSession()),
      accountServiceProvider.overrideWithValue(ExampleAccount()),
      sharedFileServiceProvider.overrideWithValue(ExampleFiles()),
      adminServiceProvider.overrideWithValue(ExampleAdmin()),
      filePickerGatewayProvider.overrideWithValue(ExamplePicker()),
      fileSaverGatewayProvider.overrideWithValue(ExampleSaver()),
    ],
    themeOf: themeOf ?? (ref) => ref.watch(lightThemeProvider),
  );
}

/// ログインできるパスワード(見本)。
const examplePassword = 'example-password-1';

/// 認証コード(見本)。
const exampleCode = 'ABCD-EFGH-JKLM';

class _DashboardModule implements FeatureModule {
  const _DashboardModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: '/example/dashboard',
      builder: (_, _) => Scaffold(
        appBar: AppBar(title: const Text('ダッシュボード(見本)')),
        body: const Center(child: Text('ログインしました')),
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      destination is DashboardDestination ? '/example/dashboard' : null;

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}

class ExampleSession implements SessionService {
  @override
  Future<AuthSession> login(String identity, String password) async {
    if (password != examplePassword) {
      throw const PbException(PbFailureKind.invalidCredentials);
    }
    return AuthSession(
      token: 'example-token',
      userId: 'u1',
      username: identity,
      appUserId: 'U0001',
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class ExampleAccount implements AccountService {
  @override
  Future<void> acceptCode({
    required String username,
    required String code,
    required String password,
  }) async {
    final normalized = code.replaceAll(RegExp(r'[-\s]'), '').toUpperCase();
    if (normalized != exampleCode.replaceAll('-', '')) {
      throw const PbException(PbFailureKind.validation);
    }
  }

  @override
  Future<void> requestPasswordReset(String identity) async {}

  @override
  Future<void> requestSignup({
    required String fullName,
    String? requestedUsername,
    String? contactEmail,
    Map<String, Object?>? profile,
    String? note,
  }) async {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class ExampleFiles implements SharedFileService {
  final _stored = <StoredFile>[];

  @override
  Future<StoredFile> upload({
    required String appFileId,
    required Uint8List bytes,
    required String filename,
    String? mimeType,
    String? comment,
  }) async {
    final file = StoredFile(
      recordId: 'r${_stored.length + 1}',
      appFileId: appFileId,
      revision: _stored.where((f) => f.appFileId == appFileId).length + 1,
      originalName: filename,
      sizeBytes: bytes.length,
      mimeType: mimeType ?? '',
    );
    _stored.add(file);
    return file;
  }

  @override
  Future<List<StoredFile>> history(String appFileId) async =>
      _stored.where((f) => f.appFileId == appFileId).toList().reversed.toList();

  @override
  Future<DownloadedFile?> download(String appFileId, {int? revision}) async {
    final found = await history(appFileId);
    if (found.isEmpty) return null;
    return DownloadedFile(file: found.first, bytes: Uint8List.fromList([1]));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class ExampleAdmin implements AdminService {
  @override
  Future<List<SignupRequest>> listSignupRequests() async => [
    SignupRequest(
      userId: 'p1',
      fullName: '鈴木 一郎',
      requestedUsername: 'suzuki.ichiro',
      contactEmail: 'suzuki@example.test',
      profile: const {'ruby': 'すずき いちろう'},
      note: '',
      created: DateTime(2026, 11, 3, 9, 30),
    ),
  ];

  @override
  Future<List<ResetRequest>> listResetRequests() async => [
    ResetRequest(
      id: 'q1',
      userId: 'p2',
      username: 'tanaka.t',
      name: '田中 太郎',
      created: DateTime(2026, 11, 3, 10, 0),
    ),
  ];

  @override
  Future<IssuedCode> activate({
    required String userId,
    required String appUserId,
    String? username,
    String? email,
    String? name,
    bool mail = true,
  }) async => IssuedCode(
    userId: userId,
    username: username ?? 'suzuki.ichiro',
    appUserId: appUserId,
    kind: CodeKind.activate,
    code: exampleCode,
    expiresAt: DateTime.now().add(const Duration(hours: 72)),
    mailed: false,
  );

  @override
  Future<IssuedCode> issueResetCode(String userId, {bool mail = true}) async =>
      IssuedCode(
        userId: userId,
        username: 'tanaka.t',
        appUserId: 'U0002',
        kind: CodeKind.reset,
        code: exampleCode,
        expiresAt: DateTime.now().add(const Duration(hours: 24)),
        mailed: false,
      );

  @override
  Future<void> reject(String userId) async {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class ExamplePicker implements IFilePickerGateway {
  @override
  Future<PickedFile?> pick() async =>
      PickedFile(name: 'sample.txt', bytes: Uint8List.fromList([1, 2, 3]));
}

class ExampleSaver implements IFileSaverGateway {
  @override
  Future<bool> save(String filename, Uint8List bytes) async => true;
}
