# app_shell ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

app_shell: アプリ全体の枠(タイトルバー・サイドバー・ハンバーガーメニュー・ログインユーザー)の見た目の部品。機能・認証の実体は知らない。

アプリ全体の枠(タイトルバー・サイドバー・ハンバーガーメニュー・ログインユーザー)の見た目の部品。`packages/features/CLAUDE.md` の「アプリの枠(app_shell)とメニュー」に従う。 機能・認証の実体は知らない。表示する項目、権限の判定、ユーザー情報は、呼び出し側(`apps/pms_app`)が渡す。

### 1.2 範囲

- 場所: `packages/ui/app_shell`(ui(UI 基盤))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)、`feature_shared`(パッケージ)、`access_control`(パッケージ)、`announcement`(パッケージ)、`approval`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`backstage`(パッケージ)、`barcode_entry`(パッケージ)、`document_settings`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`production_plan`(パッケージ)、`quality`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ)、`entity_screens`(パッケージ)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`view_responsiveness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `ActionButtons` | クラス | 画面の操作ボタンの標準の配置(編集・設定・確認の画面で共通)。 |
| FR-02 | `AppShellLabels` | クラス | 枠の部品が使う文字列。アプリが言語ごとに渡す(多言語は呼び出し側で行う)。 |
| FR-03 | `BreadcrumbItem` | クラス | パンくずリストの 1 項目。[onTap] があれば、押せる(戻り先)。無ければ、押せない(画面を持たないグループ)。 |
| FR-04 | `Breadcrumbs` | クラス | パンくずリスト + 見出し。「ルート(小)▶ 子(小)▶ 見出し(大)」を、1 行に左から右へ並べる |
| FR-05 | `ContentWidth` | クラス | 画面の内容の幅(両端の圧迫感を減らし、視野に収める)。[ScreenScaffold] が、見出しと本体に適用する。 |
| FR-06 | `BusyOverlay` | クラス | 長時間の処理中に、画面全体の操作を無効にして「計算中」を示す覆い。 |
| FR-07 | `showConfirmDialog` | 関数 | 確認のダイアログ(取り消し / 実行)。実行を選んだときだけ true を返す(閉じる・取り消しは false)。 |
| FR-08 | `HamburgerMenu` | クラス | ハンバーガーメニュー(モバイルの Drawer)。サイドバーと同じメニューを共有する。 |
| FR-09 | `MultiMainFrame` | クラス | マルチメインフレーム: タイトルバー + サイドバー + メインの3つの子を持つ。 |
| FR-10 | `SingleMainFrame` | クラス | シングルメインフレーム: タイトルバーとメインの子を1つ持つ(ログイン・ログアウトなど)。 |
| FR-11 | `SelectionFrame` | クラス | 選択フレーム: タイトルバー・サイドバーを持たず、ほかのフレームと併用する(選択画面の枠)。 |
| FR-12 | `AppMenuItem` | クラス | メニューの1項目。 |
| FR-13 | `AppMenuGroup` | クラス | メニューのグループ(開閉する見出しと項目)。 |
| FR-14 | `AppMenu` | クラス | サイドバーとハンバーガーメニューが共有するメニュー。 |
| FR-15 | `AppUser` | クラス | ログインユーザーの表示用の情報。 |
| FR-16 | `UserMenuAction` | クラス | ユーザーメニュー(設定・ログアウトなど)の1項目。 |
| FR-17 | `ScreenScaffold` | クラス | 機能の画面の骨組み(画面案 `tools/open-design` の画面の枠)。AppBar を使わず、画面の見出しと本体を縦に並べる。 |
| FR-18 | `ScreenTitle` | クラス | 画面の見出し。上の文字・見出し・(戻れるとき)戻るボタン・右側の「時点」と操作ボタン。 |
| FR-19 | `SideBar` | クラス | サイドバー。通常は項目名つき、[iconOnly] のときはアイコンだけ(グループは押すと項目を選ぶ)。 |
| FR-20 | `StatusCard` | クラス | 状態を知らせる画面の部品。画面案(`tools/open-design`)のブート・ログアウト・エラーの構成。 |
| FR-21 | `StatusIcon` | クラス | 状態を表す丸いアイコン(直径 64)。[isError] が true のときは danger-soft の地に danger、 |
| FR-22 | `AppTitleBar` | クラス | タイトルバー。アプリのタイトル(または画像)、モバイルのときのハンバーガーボタン、ログインユーザー。 |
| FR-23 | `UserContainerSize` | 列挙型 | [UserContainer] の表示パターン。 |
| FR-24 | `UserDetailBuilder` | 型の別名 | 呼び出し元が渡す詳細情報を、表示のたびに作るデリゲート(large)。 |
| FR-25 | `UserContainer` | クラス | ログインユーザーの表示(顔写真 + 見出し・タイトル・サブタイトル)と、ユーザーメニュー(設定・ログアウトなど)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **構成**: | 部品 | ファイル | 内容 |
- **振る舞い**: 画面の幅は `view_responsiveness` の `MediaBreakPoint` で判定する。モバイル=ハンバーガー(サイドバーは非表示)、タブレット=アイコンだけ、PC=通常。設定(`sidebarIconOnly`)が有効のときは PC でもアイコンだけ。
- **実装の指針**: 表示する文字列は引数で受け取る(`AppShellLabels` とメニューのモデル)。この部品自身は多言語の仕組みを持たない。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/app_shell.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 29 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 29 件。

- `test/action_buttons_test.dart`
  - 主・副のボタンは同じ幅で、中央に横並びになる
  - 保存・削除・補助の並びと色: 同じ幅で、削除はエラーの色
  - 確認のダイアログ: 実行は true、取り消しは false
- `test/app_shell_test.dart`
  - PC: 通常のサイドバー(項目名つき)とユーザーを表示する
  - タブレット: アイコンだけのサイドバー
  - 設定でアイコンだけにできる(PC)
  - モバイル: サイドバーを隠し、ハンバーガーで同じメニューを開く
  - ログインしていない(ユーザーが無い)ときは、メニューもユーザーも出さない
  - ユーザーメニューから設定などを選べる
  - シングルメインフレームはサイドバーを持たない
  - small: 顔写真のみ。▼を出さず、タップでメニュー
  - medium: 見出し・タイトル・サブタイトル。空は出さない。メニューがあるときだけ▼
  - large: 大きな顔写真と詳細。操作はメニューではなくボタン
  - large: 広いときは左に顔写真・右にラベル群
  - large: 狭いときは顔写真の下へ回り込み、顔写真は縮まない
  - large: 長いラベルは省略し、あふれない
  - large: 詳細の寄せを指定できる(左・右)
  - タイトルバーの表示パターンは提供者(userSize)が決められる
  - 顔写真の大きさの順: small < medium < large
- `test/breadcrumbs_test.dart`
  - PC: パンくずが左から右へ並び、最後は押せない
  - スマートフォン: 見出しだけ。押すと、下に「ルート ▶ 子 ▶」が開閉する
  - 内容の幅: スマートフォンは 95%、それ以外は 95%(1100 以下)から 85%(1800 以上)、上限 1600
  - ScreenScaffold: 見出しと本体が、内容の幅で中央に置かれる
- `test/status_card_test.dart`
  - 見出し・説明・注記・ボタンを、中央のカードに縦に並べる
  - 説明・注記・ボタンは省略でき、進行バーを出せる
  - 狭い幅でも、あふれずにカードに収まる
  - StatusIcon: 通常は accent-soft、エラーは danger-soft の地(テーマから取る)
- `test/user_menu_test.dart`
  - メニューを開いている間に枠が再構築されても、選択が実行される
  - メニューは担当者の直下(右側)に出る

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
