/// 画面のパス。`/auth/admin/…` は、アプリが管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。
abstract final class DocumentSettingsPaths {
  static const String home = '/auth/admin/document-settings';
}
