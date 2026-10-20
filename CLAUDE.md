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
- `packages/features/`: `xxx_api`(契約=遷移先・命令の型)と `xxx`(実装=画面・ルート・ハンドラ、`XxxModule implements FeatureModule`)のペア。機能同士・アプリは `xxx_api` の型だけに依存し、実装には依存しない。
- `packages/core/`: `baton_lib`(コマンドバス)と `feature_shared`(機能とアプリの仲介)。
- `packages/ui/`, `packages/infra/`(graphql, logger_provider), `packages/foundation/`(画面を持たない汎用部品)。

### baton_lib(コマンドバス)

機能パッケージ間・アプリ間のやりとりは文字列ではなく `Command<R>` オブジェクトで行う。画面遷移も `Destination<R> extends Command<R>` として同じ入口(`CommandBus.execute`)に通し、ログ・権限などの横断処理は Middleware で差し込む。アプリ側で `Destination` かどうかでナビゲーションとハンドラに振り分ける。詳細仕様・命名規則・ドキュメント配置ルールは [packages/core/baton_lib/CLAUDE.md](packages/core/baton_lib/CLAUDE.md) を参照(同パッケージで作業するときは必読。レポートは `doc/log`、使い方は `doc/contents`、指示は `issue/` に置く規則)。

## バージョン管理

依存・SDK バージョンはルート [pubspec.yaml](pubspec.yaml) の `melos > command > bootstrap` で集中管理する。上げるときはここだけ直して `melos bootstrap`(各パッケージの該当行は "Managed by Melos" コメント付きで上書きされる)。

##　規則
1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
    1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contens`の保存する。
3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
    1.  つまり`生成結果のレポート`と連動する。
    2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。