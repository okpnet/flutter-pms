import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';

/// 「2026年11月18日」の形。
String manualDateText(DateTime d) => '${d.year}年${d.month}月${d.day}日';

/// ページの「更新者 · 更新日 · 改訂」の文。
String manualMetaText(ManualStrings s, ManualPageRecord p) => s.view.meta(
  by: p.updatedBy,
  at: manualDateText(p.updatedAt),
  rev: p.rev,
);
