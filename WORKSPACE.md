# flutter-pms workspace / melos 手順

## 構成(依存は上から下への一方向のみ)

```
flutter-pms/
├─ pubspec.yaml               ← workspace ルート + melos 設定(バージョン集中管理)
├─ apps/
│   └─ pms_app                ← シェルアプリ:機能を組み立てるだけ
├─ packages/
│   ├─ features/              ← 機能(1機能=1パッケージ)。lib/xxx_api.dart = 契約(遷移先・命令の型) / lib/xxx.dart = 実装の入口(アプリだけが読む)
│   │   └─ sales, resource, item, ...
│   ├─ core/                  ← baton_lib, feature_shared(機能とアプリの仲介)
│   ├─ ui/                    ← theme_lib, view_responsiveness, ui_mapper, grid_extensions
│   ├─ infra/                 ← graphql_lib(gqlib), graphql_provider_lib(gqlprvlib), logger_provider
│   └─ foundation/            ← query_builder, data_strategist, undo_redo
├─ legacy/                    ← workspace 対象外(grid_lib, pms_authenticator, fetch_token, fultter_main …)
└─ tools/                     ← Flutter 以外(database, docker, condition_pipeline, uml)
```

workspace の対象は `apps/*` と `packages/*/*`。フォルダを置けば自動で対象になる
(新しいパッケージを作ったら、ルートの pubspec.yaml の編集は不要)。

## 初回セットアップ(PowerShell)

```powershell
cd C:\git\flutter-pms

# 1) melos を入れる(一度だけ)
dart pub global activate melos

# 2) 各パッケージに残っている個別のロック・解決結果を消す
Get-ChildItem apps, packages -Directory -Depth 2 |
  Where-Object { Test-Path "$($_.FullName)\pubspec.yaml" } |
  ForEach-Object {
    Remove-Item "$($_.FullName)\pubspec.lock", "$($_.FullName)\.dart_tool" -Recurse -Force -ErrorAction SilentlyContinue
  }

# 3) シェルアプリのプラットフォームフォルダを生成(既存ファイルは上書きされない)
cd apps\pms_app
flutter create --platforms=windows .
Remove-Item test\widget_test.dart   # 生成されるカウンターのテストは不要
cd ..\..

# 4) ワークスペース全体を一括解決 → ルートに pubspec.lock が1つできる
flutter pub get

# 5) melos bootstrap → ルートの bootstrap 設定のバージョンを各パッケージへ同期
melos bootstrap
```

## 日常のコマンド

| やりたいこと | コマンド |
|---|---|
| 対象パッケージの一覧 | `melos list` |
| 依存関係の確認 | `melos list --graph` |
| 全体の静的解析 | `melos run analyze` |
| 全体のテスト | `melos run test` |
| 層ごとのテスト | `melos exec --category=features -- flutter test` |
| build_runner を使うパッケージの生成 | `melos run gen` |
| アプリ起動 | `cd apps\pms_app; flutter run -d windows` |
| 特定パッケージだけで実行 | `melos exec --scope=customer -- flutter test` |

## 体験してほしいポイント

1. **ロックファイルが1つ**: `flutter pub get` の後、ルートにだけ `pubspec.lock` ができる。
2. **バージョンの集中管理**: `melos bootstrap` 後、`theme_lib` などの `sdk: ^3.10.8` が
   `^3.12.2` に変わり、`# Managed by Melos ...` のコメントが付く。
   以後、バージョンを変えるときはルート `pubspec.yaml` の `melos > command > bootstrap` だけを直す。
3. **機能の分離**: `pms_app` のホーム画面は `shared_master/shared_master_api.dart` の型だけで
   「顧客台帳・外部供給者台帳・配送区分台帳へ遷移」を行う。

## 機能を追加するとき

1. `packages/features/xxx`(`XxxModule implements FeatureModule`)を作り、他の機能から使う型は `lib/xxx_api.dart` で公開する
2. `apps/pms_app/lib/app.dart` の `featureModules` に1行追加

## 注意

- `legacy/grid_lib` は workspace 対象外だが、
  workspace 内のパッケージを path で参照している。解決エラーが出たら packages/ へ移して workspace に加える。
- workspace のワイルドカードが SDK で使えない場合は、ルート pubspec.yaml のコメントに従って列挙する。
- ルートの `.gitignore` に `*.lock` があるため、ルートの `pubspec.lock` もコミットされない。
  固定したいなら `.gitignore` に `!/pubspec.lock` を追加する。
- IDE は `C:\git\flutter-pms` をルートとして開く。
