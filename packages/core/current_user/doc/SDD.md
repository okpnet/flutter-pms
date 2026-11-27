# current_user ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

current_user: ログイン中のユーザー(担当者)の状態管理。認証(PocketBase)とデータ(GraphQL)の間をつなぐインターフェイスと、一度引いた担当者の履歴・言語を保持する。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/current_user` |
| Dart ファイル(生成物を除く) | 4 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CurrentUser` | クラス | ログイン中のユーザー(担当者)。登録・更新の更新者(`update_user_id`・`update_user_history_id`)に使う。 | `lib/src/current_user.dart` |
| `CurrentUserHolder` | クラス | ログイン中のユーザー([CurrentUser])を、一度引いて保持する。 | `lib/src/current_user_holder.dart` |
| `UserIdentity` | クラス | 認証(ログイン)側が分かっているユーザーの身元。 | `lib/src/user_identity.dart` |
| `IUserIdentitySource` | インターフェイス | 認証側(ログイン)が、今のユーザーの身元を返す窓口。ログインしていなければ null。 | `lib/src/user_identity.dart` |
| `StaffHistoryLookup` | 型の別名 | 担当者の最新の履歴の ID を引く関数(データ側。GraphQL など)。無ければ null。通信の失敗は投げる。 | `lib/src/user_identity.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `CurrentUserHolder` | Proxy(履歴の ID の取得と使い回しを、呼び出し側から隠す) | `lib/src/current_user_holder.dart` |
| `IUserIdentitySource` | Bridge(認証とデータの間のつなぎ) | `lib/src/user_identity.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/current_user_holder_test.dart`(6)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
