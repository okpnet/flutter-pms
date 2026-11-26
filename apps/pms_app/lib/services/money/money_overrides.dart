import 'package:document_settings/document_settings.dart' show savedAppSettingsProvider;
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;

/// 金額の通貨の表示を、アプリの設定(`info_app.settings` の JSON の `currency`)から差し込む。
///
/// - 設定の JSON の `currency`(`MoneyFormat.fromJson` の形。言語ごとの記号と位置)を読む。無い・不正は標準(日本円。
///   日本語は「1,200 円」、英語は「¥1,200」)。DB の列は増やさない(設定は既存の jsonb)。
/// - 表示だけを変え、値は変えない。換算・複数通貨は扱わない(海外取引が出たときに別の設計で行う)。
/// - 設定の画面で保存すると読み直す(`savedAppSettingsProvider`)。読み込み中・失敗のときは標準。
List<Override> moneyOverrides() => [
  moneyFormatProvider.overrideWith((ref) {
    final settings = ref.watch(savedAppSettingsProvider).value;
    return MoneyFormat.fromJson(settings?.extra['currency']);
  }),
];
