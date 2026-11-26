import 'dart:typed_data';

import 'package:announcement/announcement.dart' show Announcement, InMemoryAnnouncementGateway, announcementGatewayProvider;
import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart' show signInDestinationProvider;
import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart' show LoginDestination;
import 'package:backstage/backstage.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:manual/manual.dart'
    show
        ApprovalStepInfo,
        InMemoryManualApprovalSource,
        InMemoryManualRepository,
        ManualApproval,
        ManualPageRecord,
        manualSeedPages;
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pbapi/pbapi.dart';
import 'package:theme_lib/theme_lib.dart' show themeLoggerProvider;
import 'package:pms_app/services/access/menu_access.dart';
import 'package:pms_app/services/services.dart';

import 'virtual_server.dart';

/// 仮想の接続先(ローカルのネットワークの形。`http` はローカルのみ許されるため)。
const virtualPocketbaseUrl = 'http://192.168.1.103:8090';

/// 仮想のメンテナンスの確認。[VirtualServer.maintenance] と [VirtualServer.offline] に従う。
///
/// 実物(`HttpMaintenanceChecker`)と同じく、通信できないときはメンテナンス中とは言えず、利用可能にする。
class VirtualMaintenanceChecker implements IMaintenanceChecker {
  const VirtualMaintenanceChecker(this.server);

  final VirtualServer server;

  @override
  Future<MaintenanceStatus> check() async {
    if (server.offline) return MaintenanceStatus.available;
    return server.maintenance
        ? const MaintenanceStatus(
            isUnderMaintenance: true,
            message: '仮想のメンテナンス中です',
          )
        : MaintenanceStatus.available;
  }
}

/// 仮想のファイル選択(OS のダイアログを開かない)。[next] に入れた 1 件を返す。
class VirtualFilePicker implements IFilePickerGateway {
  PickedFile? next = PickedFile(
    name: 'sample.txt',
    bytes: Uint8List.fromList('virtual file'.codeUnits),
    mimeType: 'text/plain',
  );

  @override
  Future<PickedFile?> pick() async => next;
}

/// 仮想のファイル保存(OS のダイアログを開かない)。保存した内容を記録する。
class VirtualFileSaver implements IFileSaverGateway {
  final saved = <String, Uint8List>{};

  @override
  Future<bool> save(String filename, Uint8List bytes) async {
    saved[filename] = bytes;
    return true;
  }
}

/// pms_app の実際の動作を、仮想のサーバーで真似るための Provider の上書き。
///
/// 実物のコード(ルーター・セッション確認・認証・共有ファイル・メニューの枠・各機能のサンプルの取得元)を
/// そのまま使い、外部との接続(PocketBase・メンテナンスサーバー・GraphQL・OS のファイルダイアログ)だけを差し替える。
/// GraphQL は接続しない(各機能はメモリ上のサンプルの取得元で動く)。
///
/// 差し替えないもの: ルーター(`rootRouterProvider`)・セッション(`sessionOverrides` の
/// `MaintenanceAwarePageSession` と `PocketBasePageSession`)・認証の画面・各機能。
Future<List<Override>> exampleOverrides(
  VirtualServer server,
  ILoggerProvider logger, {
  VirtualFilePicker? picker,
  VirtualFileSaver? saver,
}) async {
  final store = InMemoryTokenStore();
  final connection = await PbConnection.open(
    url: virtualPocketbaseUrl,
    logger: logger,
    tokenStore: store,
    httpClientFactory: () => server.client,
  );
  final boot = await loadBackstageBoot(
    store: InMemoryBackstageStore(),
    launch: const BackstageLaunch(pocketbaseUrl: virtualPocketbaseUrl),
  );
  final announcements = InMemoryAnnouncementGateway(_sampleAnnouncements());
  return [
    loggerProvider.overrideWithValue(logger),
    commandBusProvider.overrideWith(createFeatureCommandBus),
    ...backstageOverrides(boot),
    // ログイン・ログアウトの画面は auth_files(サーバーに接続する)。実物の `sessionOverrides` と同じ組み立てで、
    // メンテナンスの確認だけ仮想にし、セッションは実物(PocketBase 版)を使う
    authModeProvider.overrideWithValue(AuthMode.server),
    signInDestinationProvider.overrideWithValue(const LoginDestination()),
    maintenanceCheckerProvider.overrideWithValue(VirtualMaintenanceChecker(server)),
    // 実物と同じ組み立て(メンテナンス → PocketBase のセッション)。ただし、サーバー側の無効化を検証パネルで
    // すぐに確かめられるよう、確認を省く間隔(実物は 30 秒)を 0 にする
    pageSessionMediatorProvider.overrideWith(
      (ref) => MaintenanceAwarePageSession(
        refreshMaintenance: () async =>
            (await ref.read(maintenanceStatusProvider.notifier).refresh())
                .isUnderMaintenance,
        inner: PocketBasePageSession(ref, minInterval: Duration.zero),
      ),
    ),
    ...dashboardOverrides(),
    ...userSummaryOverrides(),
    // 実物と同じ差し込み(管理者の判定: マニュアルの編集・承認スタンプ・PDF の設定、承認一覧、ダッシュボードの通知)
    // 文書の見本: 品質マニュアル(m1)は承認待ち、安全衛生マニュアル(m90)は承認済み(公開・承認スタンプつき)
    ...manualOverrides(
      sampleApprovalSource: ExampleManualApprovalSource(announcements),
      sampleRepository: () => InMemoryManualRepository(initial: [...manualSeedPages(), ..._sampleApprovedManual()]),
    ),
    ...approvalOverrides(),
    ...moneyOverrides(),
    entityFileTransferProvider.overrideWith(PocketBaseEntityFileTransfer.new),
    ...graphqlOverrides(),
    // 通知(メモリ上の見本。題名・本文は、DB に言語別で持つ値と同じ形)。ダッシュボードの未読通知・通知の一覧を確かめる
    announcementGatewayProvider.overrideWithValue(announcements),
    pbConnectionProvider.overrideWithValue(connection),
    tokenStoreProvider.overrideWithValue(store),
    filePickerGatewayProvider.overrideWithValue(picker ?? VirtualFilePicker()),
    fileSaverGatewayProvider.overrideWithValue(saver ?? VirtualFileSaver()),
    // GraphQL に接続しないため、実物の判定(担当者の実効アクセスパスの取得)の代わりに、仮想のユーザーの許可を返す
    menuAccessProvider.overrideWith((ref, location) {
      final session = ref.read(sessionServiceProvider).current;
      if (session == null) return MenuAccess.none;
      if (session.isAdmin) return MenuAccess.all;
      final user = virtualUsers.where((u) => u.id == session.userId).firstOrNull;
      final allowed = user?.allowedPaths;
      return allowed == null ? MenuAccess.all : MenuAccess.of(allowed);
    }),
    localeProvider.overrideWith(SystemLocaleNotifier.new),
    themeLoggerProvider.overrideWithValue(logger),
    appNameProvider.overrideWith(
      (ref) => ref.watch(appCoreStringsProvider).app.title,
    ),
  ];
}

/// 評価用の承認の取得元(DB の `document_request_approval` の動きを真似る)。品質マニュアル(`m1`)は承認待ちで、
/// 申請すると承認する人への通知(`approval`)を [announcements] に 1 件作る。同じ文書を続けて申請しても、通知は増えない(冪等)。
///
/// パターン: Fake(テストダブル)
class ExampleManualApprovalSource extends InMemoryManualApprovalSource {
  ExampleManualApprovalSource(this.announcements)
    : super({
        // 承認済み(公開)。承認スタンプ(承認者・日時)が出る
        'm90': ManualApproval(
          published: true,
          pending: false,
          statusLabel: '承認',
          controlNumber: 'SM-001',
          versionCode: 'B',
          steps: [
            ApprovalStepInfo(
              approved: true,
              rejected: false,
              pending: false,
              stampLabelJa: '承認',
              stampLabelEn: 'Approval',
              priority: 1,
              approvedAt: DateTime(2026, 11, 20, 10),
              approvedStaff: '鈴木 一郎',
              approvalName: '品質責任者',
              controlNumber: 'SM-001',
              versionCode: 'B',
            ),
          ],
        ),
        'm1': const ManualApproval(
          published: false,
          pending: true,
          statusLabel: '承認待ち',
          controlNumber: 'QM-001',
          versionCode: 'A',
          steps: [
            ApprovalStepInfo(
              approved: false,
              rejected: false,
              pending: true,
              stampLabelJa: '承認待ち',
              stampLabelEn: 'Pending',
              priority: 1,
            ),
          ],
        ),
      });

  final InMemoryAnnouncementGateway announcements;

  @override
  Future<int> request(String rootPageId) async {
    final n = await super.request(rootPageId);
    if (n > 0) {
      announcements.items.add(
        Announcement(
          id: 'req-${announcements.items.length + 1}',
          title: '承認の申請があります',
          category: 'approval',
          at: DateTime.now(),
        ),
      );
    }
    return n;
  }
}

/// 承認済みの見本の文書(ルート 1 つ + 子ページ 1 つ)。
List<ManualPageRecord> _sampleApprovedManual() => [
  ManualPageRecord(
    id: 'm90',
    parentId: null,
    order: 2,
    title: '安全衛生マニュアル',
    rev: 2,
    updatedBy: '鈴木 一郎',
    updatedAt: DateTime(2026, 11, 20),
    md: '',
  ),
  ManualPageRecord(
    id: 'm91',
    parentId: 'm90',
    order: 1,
    title: '安全の基本',
    rev: 1,
    updatedBy: '鈴木 一郎',
    updatedAt: DateTime(2026, 11, 20),
    md: '## 基本\n\n作業の前に、保護具を確認します。',
  ),
];

/// 見本の通知(接続なしで、ダッシュボードの未読通知・通知の一覧を確かめるため)。
List<Announcement> _sampleAnnouncements() => [
  Announcement(
    id: 'n1',
    title: '監査の予定: 工程監査',
    message: '予定日が近づいています',
    category: 'audit',
    targetSymbol: 'AD-0001',
    at: DateTime(2026, 11, 24),
  ),
  Announcement(id: 'n2', title: '承認待ちが 2 件あります', category: 'approval', at: DateTime(2026, 11, 23)),
  Announcement(id: 'n3', title: '力量の更新のお知らせ', message: '資格の更新期限が近づいています', isRead: true, at: DateTime(2026, 11, 10)),
];
