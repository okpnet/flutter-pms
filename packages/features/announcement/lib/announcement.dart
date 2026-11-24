/// 通知の実装。アプリだけが読み込む。
///
/// - [AnnouncementModule]: アプリへ組み込む口(`/announcements`。入口はダッシュボードの未読通知)
/// - [announcementGatewayProvider] / [IAnnouncementGateway]: 通知の取得元(既定はメモリ上。アプリが GraphQL 版に差し替える)
/// - [GraphqlAnnouncementGateway]: GraphQL 版の取得元(`announcement_model`。DB の表 `trans_announcement`・関数 `announcement_mark_read`・`audit_notify_due`)
/// - [AnnouncementBanner]: ダッシュボードの「未読の通知が N 件あります」(アプリが `dashboardAlertSlotProvider` の領域に並べる)。
///   表示のたび(ログインユーザーが変わるたび)に、監査の予定の通知を作る
/// 他の機能が使う遷移先の型は `announcement_api.dart` を読み込む。
library;

export 'src/data/announcement_data.dart';
export 'src/graphql/graphql_announcement_gateway.dart';
export 'src/i18n/strings_provider.dart' show AnnouncementStrings, announcementStringsProvider;
export 'src/page/announcement_banner.dart' show AnnouncementBanner;
export 'src/page/announcement_list_page.dart' show AnnouncementListPage;
export 'src/page/announcement_module.dart' show AnnouncementModule;
export 'src/page/announcement_paths.dart';
