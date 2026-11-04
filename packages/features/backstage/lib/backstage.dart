/// アプリケーションの裏設定(実装)。アプリだけが読み込む。
///
/// - [BackstageModule]: アプリへ組み込む口(ルートは枠の外に置く)
/// - [loadBackstageBoot] / [BackstageBoot]: 起動時の材料(アセットの設定・保管庫・起動時の値)の読み込みと解決
/// - [backstageOverrides]: 値・入口の判定の差し込み(他の機能は `feature_shared` の `backstageValuesProvider` を読む)
/// - [BackstageResolver]: 優先順位の解決(起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値)
/// - [IBackstageStore] / [SecureBackstageStore]: 保存先(OS の保管庫)
/// - [EntryHash] / [BackstageEntryGate]: 入口の条件(ソルト付きハッシュ)と判定
/// 他の機能が使う遷移先の型は `backstage_api.dart` を読み込む。
library;

export 'src/backstage_boot.dart';
export 'src/backstage_controller.dart';
export 'src/backstage_module.dart' show BackstageModule;
export 'src/backstage_paths.dart';
export 'src/entry/entry_gate.dart';
export 'src/entry/entry_hash.dart';
export 'src/i18n/strings_provider.dart'
    show BackstageStrings, backstageStringsProvider;
export 'src/pages/backstage_page.dart' show BackstagePage;
export 'src/settings/backstage_resolver.dart';
export 'src/settings/backstage_settings.dart';
export 'src/settings/backstage_store.dart';
