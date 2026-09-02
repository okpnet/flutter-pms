# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 現在の状態

下記の設計に基づき実装済み（初回実装: 2026-09-02、[doc/2026/09/02_001.md](doc/2026/09/02_001.md) 参照）。
- 実体は [DefaultLoggerProvider](lib/src/default_logger_provider.dart)。`logger_lib` の `LoggerProvider<Logger>` を継承し、`T` に `package:logger` の `Logger` を当てている。
- フィルタは `logger` パッケージ既定の `DevelopmentFilter` ではなく `ProductionFilter` を使用する。`DevelopmentFilter` は `assert` 経由で判定するため release ビルドで常に出力を止めてしまい、ローテーションファイルへの記録が主目的の本パッケージでは不適切なため。
- `rotation_log` が提供する `RotationLogOutput`（`logger` の `LogOutput` 実装）をそのまま `Logger` の出力先として利用し、ラップ・ブリッジの自前実装は行っていない。
- ログ出力先ディレクトリはテスト/上位アプリから差し替えられるよう、各ファクトリに `directoryProvider` を任意で渡せる。

## コマンド

このパッケージは `c:\git\flutter-pms` リポジトリ内の1つの Flutter パッケージ (`flutter_app_lib/logger_provider`)。コマンドはこのディレクトリで実行する。

```
flutter pub get                      # 依存解決（logger_lib を path 参照しているため、隣接パッケージの変更後は再実行が必要）
flutter test                         # 全テスト実行
flutter test test/logger_provider_test.dart   # 単一テストファイルの実行
flutter analyze                      # 静的解析（analysis_options.yaml は flutter_lints/flutter.yaml を継承）
```

## アーキテクチャ

### 位置づけと依存関係
本パッケージは以下をラップしてロガー機能を提供する:
- [logger](https://pub.dev/packages/logger)（^2.7.0）
- [rotation_log](https://pub.dev/packages/rotation_log)（^0.1.1）
- `../../flutter_pub_lib/logger_lib`（path 依存。pubspec.yaml では `logger_lib` として参照）

ロガー本体は `logger_lib` が定義するインターフェイスを実装する。利用側は必ずこのインターフェイス経由で呼び出す。`logger_lib` 側の実体は次の通り（変更時はそちらのソースも参照）:
- `ILoggerProvider`（`flutter_pub_lib/logger_lib/lib/src/i_logger_provider.dart`）: `level` getter と `debug/info/warn/error/fatal(String message, {Object ex, StackTrace trace})` の書き込みメソッド群を宣言。
- `LoggerProvider<T>`（`flutter_pub_lib/logger_lib/lib/src/logger_proveder.dart`）: `ILoggerProvider` を implements し、ラップ対象のロガーインスタンスを `T get logger` として公開する抽象クラス。本パッケージはこれを継承し、`T` に `logger`/`rotation_log` のロガー型を当てはめて実装する想定。

ログレベルの定義は `logger_lib` 側に従うこと（本パッケージ側で独自定義しない）。

### 設定
`rotation_log` と `logger` の設定は1つの JSON オブジェクトとして扱い、asset から読み込んでアプリ側で差し替え可能にする。
- JSON はライブラリごとに分割せず、1オブジェクトの中にそれぞれの設定をネストしたオブジェクトとして持たせる。
- 初期化は以下3通りの入力を受け取れるファクトリパターンで提供する:
  1. 設定クラスのオブジェクト（[LoggerProviderConfig](lib/src/logger_provider_config.dart) / [DefaultLoggerProvider.fromConfig](lib/src/default_logger_provider.dart)）
  2. Map / JSON（[DefaultLoggerProvider.fromMap](lib/src/default_logger_provider.dart)）
  3. アセットのパス（[DefaultLoggerProvider.fromAsset](lib/src/default_logger_provider.dart)）
- 具体的なJSONキーは [LoggerProviderConfig](lib/src/logger_provider_config.dart) のdartdocにサンプルを記載している（`logger`/`rotation` の各設定項目は [LoggerConfig](lib/src/logger_object/logger_config.dart) / [RotationConfig](lib/src/rotation_object/rotation_config.dart) 参照）。

### ディレクトリ・命名規約
- 命名は snake_case、Flutter の命名規則に従う。
- 名前空間とディレクトリ構成を一致させる。
- 各ディレクトリには、そのディレクトリと同名でアンダースコア `_` から始まるバレルファイルを必ず置く（例: `lib/src/logger_object/_logger_object.dart`）。
- 想定ディレクトリ構成:
  ```
  lib
    src
      rotation_object   # rotation_log 側のラップ実装
      logger_object      # logger 側のラップ実装
  ```
- 実際の構成（両オブジェクトを束ねる部分は特定の DIR に属さないため `lib/src` 直下に置いている）:
  ```
  lib
    logger_provider.dart          # トップレベル唯一のファイル
    src
      _src.dart                   # src のバレル
      default_logger_provider.dart  # ILoggerProvider の実装本体・ファクトリメソッド群
      logger_provider_config.dart   # logger/rotation を1つに束ねた設定オブジェクト
      logger_object
        _logger_object.dart
        logger_config.dart
        logger_factory.dart
      rotation_object
        _rotation_object.dart
        rotation_config.dart
        rotation_logger_factory.dart
  ```
- ファイル名は名詞にする。
- トップレベル（`lib/` 直下）に置くファイルは1つのみとし、ライブラリ名（`logger_provider.dart`）と同一にする。
### ドキュメント
-   トップDIR以下に、記録としてdocフォルダを作成し、管理する
-   変更や仕様変更、テスト結果を含め状態を記録する
-   レビジョン管理する
    -   suffixとしてyyyy/MM/dd_連番3桁