# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## ワークスペース概要

Dart pub workspace + melos のモノレポ(Flutter, Windows デスクトップ向け)。ルートの [pubspec.yaml](pubspec.yaml) が workspace 定義と melos 設定を兼ね、`pubspec.lock` はルートに1つだけ。セットアップ手順の詳細は [WORKSPACE.md](WORKSPACE.md)。

workspace 対象は `apps/*` と `packages/*/*`(フォルダを置けば自動で対象。ルート pubspec の編集は不要)。`legacy/`(grid_lib, gqlib 等)と `tools/`(database, docker, condition_pipeline, uml)は対象外。

## コマンド

PowerShell から実行。melos は `dart pub global activate melos` で導入済みの前提。

```powershell
flutter pub get                      # workspace 全体を一括解決(ルートで)
melos bootstrap                      # ルート pubspec の bootstrap 節のバージョンを各パッケージへ同期
melos run analyze                    # 全体を dart analyze
melos run test                       # Flutter + 純Dart 両方のテスト
melos run gen                        # build_runner を使うパッケージのコード生成
melos exec --category=features -- flutter test   # 層ごと(apps/features/core/ui/infra/foundation)
melos exec --scope=customer -- flutter test      # 特定パッケージだけ
cd apps\pms_app; flutter run -d windows          # アプリ起動
```

単一テスト: 対象パッケージ内で `flutter test test/xxx_test.dart`(純Dart パッケージは `dart test test/xxx_test.dart`、`--plain-name "名前"` で絞り込み)。

## アーキテクチャ

依存は上から下への一方向のみ:

`apps` → `features` → `core` → `ui` / `infra` → `foundation`

- `apps/pms_app`: シェルアプリ。機能を組み立てるだけ。機能追加は `lib/app.dart` の `featureModules` に1行足す。
- `packages/features/`: 1機能=1パッケージ `xxx`(実装=画面・ルート・ハンドラ、`XxxModule implements FeatureModule`)。契約(遷移先・命令の型)は同じパッケージの `lib/xxx_api.dart`(契約だけのバレル)で公開し、実装の入口 `lib/xxx.dart` はアプリだけが読み込む。機能同士・アプリは `xxx_api.dart` の型だけを使い、`lib/src` や実装の入口は読み込まない。
- `packages/core/`: `baton_lib`(コマンドバス)、`feature_shared`(機能とアプリの仲介)、`settings_keeper`(ローカル設定の保存と復元)。
- `packages/ui/`: UI基盤。`entity_screens`(実体の定義から台帳・編集の画面を作る)、`app_shell`(タイトルバー・サイドバー・ハンバーガー・ログインユーザーの枠)を含む。
- `packages/infra/`(graphql, logger_provider), `packages/foundation/`(画面を持たない汎用部品)。

### baton_lib(コマンドバス)

機能パッケージ間・アプリ間のやりとりは文字列ではなく `Command<R>` オブジェクトで行う。画面遷移も `Destination<R> extends Command<R>` として同じ入口(`CommandBus.execute`)に通し、ログ・権限などの横断処理は Middleware で差し込む。アプリ側で `Destination` かどうかでナビゲーションとハンドラに振り分ける。詳細仕様・命名規則・ドキュメント配置ルールは [packages/core/baton_lib/CLAUDE.md](packages/core/baton_lib/CLAUDE.md) を参照(同パッケージで作業するときは必読。レポートは `doc/log`、使い方は `doc/contents`、指示は `issue/` に置く規則)。

### settings_keeper(設定の保存と復元)

テーマ・ウィンドウの位置など、ローカルに持つ設定を保存・復元する。設定の持ち主(`SettingsOriginator`)が自分の状態を `SettingsMemento` にして `SettingsKeeper` に預ける(Memento)。保存の手段は `SettingsStorage` で、標準の `FileSettingsStorage`(JSONファイル)と `InMemorySettingsStorage`(既定)から、アプリが `settingsStorageProvider` を上書きして選ぶ・独自実装に差し替える(Strategy)。保存・復元の失敗は例外にせず、`[settings_keeper]` 付きでログに残して `false` を返す。詳細は [packages/core/settings_keeper/CLAUDE.md](packages/core/settings_keeper/CLAUDE.md)、使い方は同パッケージの `doc/contents/usage.md` を参照。

## バージョン管理

依存・SDK バージョンはルート [pubspec.yaml](pubspec.yaml) の `melos > command > bootstrap` で集中管理する。上げるときはここだけ直して `melos bootstrap`(各パッケージの該当行は "Managed by Melos" コメント付きで上書きされる)。

##　規則
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contens`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。