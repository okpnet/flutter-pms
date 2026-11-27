# app_shell ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

app_shell: アプリ全体の枠(タイトルバー・サイドバー・ハンバーガーメニュー・ログインユーザー)の見た目の部品。機能・認証の実体は知らない。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/app_shell` |
| Dart ファイル(生成物を除く) | 15 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ActionButtons` | クラス | 画面の操作ボタンの標準の配置(編集・設定・確認の画面で共通)。 | `lib/src/action_buttons.dart` |
| `AppShellLabels` | クラス | 枠の部品が使う文字列。アプリが言語ごとに渡す(多言語は呼び出し側で行う)。 | `lib/src/app_shell_labels.dart` |
| `BreadcrumbItem` | クラス | パンくずリストの 1 項目。[onTap] があれば、押せる(戻り先)。無ければ、押せない(画面を持たないグループ)。 | `lib/src/breadcrumbs.dart` |
| `Breadcrumbs` | クラス | パンくずリスト + 見出し。「ルート(小)▶ 子(小)▶ 見出し(大)」を、1 行に左から右へ並べる | `lib/src/breadcrumbs.dart` |
| `ContentWidth` | クラス | 画面の内容の幅(両端の圧迫感を減らし、視野に収める)。[ScreenScaffold] が、見出しと本体に適用する。 | `lib/src/content_width.dart` |
| `BusyOverlay` | クラス | 長時間の処理中に、画面全体の操作を無効にして「計算中」を示す覆い。 | `lib/src/busy_overlay.dart` |
| `showConfirmDialog` | 関数 | 確認のダイアログ(取り消し / 実行)。実行を選んだときだけ true を返す(閉じる・取り消しは false)。 | `lib/src/confirm_dialog.dart` |
| `HamburgerMenu` | クラス | ハンバーガーメニュー(モバイルの Drawer)。サイドバーと同じメニューを共有する。 | `lib/src/hamburger_menu.dart` |
| `MultiMainFrame` | クラス | マルチメインフレーム: タイトルバー + サイドバー + メインの3つの子を持つ。 | `lib/src/main_frame.dart` |
| `SingleMainFrame` | クラス | シングルメインフレーム: タイトルバーとメインの子を1つ持つ(ログイン・ログアウトなど)。 | `lib/src/main_frame.dart` |
| `SelectionFrame` | クラス | 選択フレーム: タイトルバー・サイドバーを持たず、ほかのフレームと併用する(選択画面の枠)。 | `lib/src/main_frame.dart` |
| `AppMenuItem` | クラス | メニューの1項目。 | `lib/src/menu_model.dart` |
| `AppMenuGroup` | クラス | メニューのグループ(開閉する見出しと項目)。 | `lib/src/menu_model.dart` |
| `AppMenu` | クラス | サイドバーとハンバーガーメニューが共有するメニュー。 | `lib/src/menu_model.dart` |
| `AppUser` | クラス | ログインユーザーの表示用の情報。 | `lib/src/menu_model.dart` |
| `UserMenuAction` | クラス | ユーザーメニュー(設定・ログアウトなど)の1項目。 | `lib/src/menu_model.dart` |
| `ScreenScaffold` | クラス | 機能の画面の骨組み(画面案 `tools/open-design` の画面の枠)。AppBar を使わず、画面の見出しと本体を縦に並べる。 | `lib/src/screen_scaffold.dart` |
| `ScreenTitle` | クラス | 画面の見出し。上の文字・見出し・(戻れるとき)戻るボタン・右側の「時点」と操作ボタン。 | `lib/src/screen_scaffold.dart` |
| `SideBar` | クラス | サイドバー。通常は項目名つき、[iconOnly] のときはアイコンだけ(グループは押すと項目を選ぶ)。 | `lib/src/side_bar.dart` |
| `StatusCard` | クラス | 状態を知らせる画面の部品。画面案(`tools/open-design`)のブート・ログアウト・エラーの構成。 | `lib/src/status_card.dart` |
| `StatusIcon` | クラス | 状態を表す丸いアイコン(直径 64)。[isError] が true のときは danger-soft の地に danger、 | `lib/src/status_card.dart` |
| `AppTitleBar` | クラス | タイトルバー。アプリのタイトル(または画像)、モバイルのときのハンバーガーボタン、ログインユーザー。 | `lib/src/title_bar.dart` |
| `UserContainerSize` | 列挙型 | [UserContainer] の表示パターン。 | `lib/src/user_container.dart` |
| `UserDetailBuilder` | 型の別名 | 呼び出し元が渡す詳細情報を、表示のたびに作るデリゲート(large)。 | `lib/src/user_container.dart` |
| `UserContainer` | クラス | ログインユーザーの表示(顔写真 + 見出し・タイトル・サブタイトル)と、ユーザーメニュー(設定・ログアウトなど)。 | `lib/src/user_container.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `AppShellLabels` | Value Object | `lib/src/app_shell_labels.dart` |
| `ScreenScaffold` | Template Method(骨組みを決め、見出しと本体を差し込む) | `lib/src/screen_scaffold.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`view_responsiveness`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)、`feature_shared`(パッケージ)、`access_control`(パッケージ)、`announcement`(パッケージ)、`approval`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`backstage`(パッケージ)、`barcode_entry`(パッケージ)、`document_settings`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`production_plan`(パッケージ)、`quality`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ)、`entity_screens`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **構成**: | 部品 | ファイル | 内容 |
- **振る舞い**: 画面の幅は `view_responsiveness` の `MediaBreakPoint` で判定する。モバイル=ハンバーガー(サイドバーは非表示)、タブレット=アイコンだけ、PC=通常。設定(`sidebarIconOnly`)が有効のときは PC でもアイコンだけ。
- **実装の指針**: 表示する文字列は引数で受け取る(`AppShellLabels` とメニューのモデル)。この部品自身は多言語の仕組みを持たない。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/action_buttons_test.dart`(3)、`test/app_shell_test.dart`(16)、`test/breadcrumbs_test.dart`(4)、`test/status_card_test.dart`(4)、`test/user_menu_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
