# access_control_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

access_control_model: access_control(ページアクセス管理)機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

`access_control` 機能(ページアクセス管理)の GraphQL モデルパッケージ。ワークスペースの方針は [../../../CLAUDE.md](../../../CLAUDE.md) の「GraphQL モデル生成ルール」、フォルダ全体の決まりは [../CLAUDE.md](../CLAUDE.md) を参照。

### 1.2 範囲

- 場所: `packages/model_providers/access_control_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`access_control`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`pms_graphql`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。

| ID | 名前 | 種類 | 対象 | 要求 |
|---|---|---|---|---|
| FR-01 | `AccessPathPageEdit` | 更新 | `info_access_path` | アクセスパス(ページ)書き込み |
| FR-02 | `AccessPathPageCreate` | 登録 | `info_access_path` | アクセスパス(ページ)登録(symbol は DB のトリガーが自動で付ける) |
| FR-03 | `AppPage` | 読み込み | `info_app` | 名前はダミーデータ以外でも変わらない。アクセスパスの info_app_id は、画面で選ばせず、この読み込みで得た id を埋め込む |
| FR-04 | `DepartmentAccessPathPage` | 読み込み | `info_department_access_path` | 部署が使えるアクセスパスと書き込みの可否。所属する担当者がこの権限を受け継ぐ |
| FR-05 | `DepartmentAccessPathPageEdit` | 更新 | `info_department_access_path` | 部署のアクセスパス書き込み |
| FR-06 | `DepartmentAccessPathPageCreate` | 登録 | `info_department_access_path` | 部署のアクセスパス登録(部署×アクセスパスは一意) |
| FR-07 | `LanguageCodePage` | 読み込み | `shared_language_code` | 言語コード読み込み(ja・en の id を引く) |
| FR-08 | `DictionaryPageCreate` | 登録 | `shared_dictionary` | 辞書の登録 |
| FR-09 | `DictionaryValuePageCreate` | 登録 | `shared_dictionary_value` | 辞書の言語別の値の登録 |
| FR-10 | `AppellationPageCreate` | 登録 | `shared_appellation` | 呼称の登録(名前・読み・略称の辞書を指す) |
| FR-11 | `StaffAccessPermissionPage` | 読み込み | `info_staff_access_permission` | 所属部署の権限に足す個別の許可(足すだけで、減らせない) |
| FR-12 | `StaffAccessPermissionPageEdit` | 更新 | `info_staff_access_permission` | 担当者のアクセスパス許可書き込み |
| FR-13 | `StaffAccessPermissionPageCreate` | 登録 | `info_staff_access_permission` | 担当者のアクセスパス許可登録(担当者×アクセスパスは一意) |
| FR-14 | `StaffEffectiveAccessPathPage` | 読み込み | `v_staff_effective_access_path` | 所属部署から受け継いだ権限と担当者ごとの許可を合わせた結果。画面の表示・編集の切り替えに使う |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `AccessControlClientException` | クラス | 通信・サーバーの異常、または固定のアプリ・言語が見つからないこと。 |
| FA-02 | `AccessPathSeed` | クラス | アクセスパスの登録の内容(パスと名前 ja/en)。`apps/pms_app/doc/contents/access_paths.csv` の1行に当たる。 |
| FA-03 | `AccessControlClient` | クラス |  |
| FA-04 | `AccessPathRecord` | クラス | アクセスパス(ページ)。名前は ja・en の2言語。 |
| FA-05 | `DepartmentAccessPathRecord` | クラス | 部署のアクセスパス(部署 × アクセスパス)。 |
| FA-06 | `StaffAccessPermissionRecord` | クラス | 担当者のアクセスパス許可(担当者 × アクセスパス)。所属部署の権限に足す。 |
| FA-07 | `EffectiveAccessPathRecord` | クラス | 担当者の実効アクセスパス(`v_staff_effective_access_path`。読み取り専用)。 |
| FA-08 | `AccessPathPageFilterSpec` | 抽象クラス |  |
| FA-09 | `AppPageFilterSpec` | 抽象クラス |  |
| FA-10 | `DepartmentAccessPathPageFilterSpec` | 抽象クラス |  |
| FA-11 | `LanguageCodePageFilterSpec` | 抽象クラス |  |
| FA-12 | `StaffAccessPermissionPageFilterSpec` | 抽象クラス |  |
| FA-13 | `StaffEffectiveAccessPathPageFilterSpec` | 抽象クラス |  |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **対応する機能**: `packages/features/access_control`(ページアクセス管理画面)と、認証(`auth_files` の承認・部署割り当て)が使うモデル。
- **アクセス管理の決まり**: 権限は部署に付け、所属(`info_assign.enable = true`)する担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う。上位部署(`info_department_tree` の親)からは受け継がない。
- **Issue(未解決・検討中)**: **アクセスパス登録の途中失敗**: 登録(`AccessControlClient.createAccessPath`)は1テーブルずつ順に呼ぶため、途中で失敗すると呼称(辞書・言語別の値・呼称)だけが残る。現在はこのまま継続する。残骸の掃除が必要になったら、DB の関数にして1回の呼び出し(1トランザクション)に移すことを検討する(`DB の関数の呼び出…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/access_control_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 34 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 7 件、テストケース 34 件。

- `test/access_control_client_test.dart`
  - 名前でアプリの id を引ける
  - 名前の条件で1件だけ問い合わせ、覚えた id を再利用する
  - 見つからないときは例外
- `test/access_control_crud_test.dart`
  - アクセスパスの一覧は、ja の名前・パス・symbol を平らな型で返す
  - アクセスパスの取得は、ja・en の名前と symbol を返す。無ければ null
  - アクセスパスの更新は、いまの辞書の id と読み・略称を保ち、名前とパスだけ直す
  - 論理削除は remove=true、元に戻すと false
  - 部署のアクセスパスは、登録(id が空)と更新を分け、部署で絞って一覧できる
  - 担当者のアクセスパス許可は、登録と更新を分ける
  - 実効アクセスパスは、担当者で絞って平らな型で返す
- `test/access_path_flatten_roundtrip_test.dart`
  - Query$AccessPathPageRead <-> Map 往復変換が元と一致する
  - Query$DepartmentAccessPathPageRead <-> Map 往復変換が元と一致する
  - Query$StaffAccessPermissionPageRead <-> Map 往復変換が元と一致する
  - Query$StaffEffectiveAccessPathPageRead <-> Map 往復変換が元と一致する
  - AccessPathPage の Edit / Rfe 往復変換が元と一致する
  - DepartmentAccessPathPage の Edit / Rfe 往復変換が元と一致する
  - StaffAccessPermissionPage の Edit / Rfe 往復変換が元と一致する
- `test/access_path_registration_test.dart`
  - アクセスパスの登録は、辞書 → 言語別の値 → 呼称 → アクセスパスの順に登録する
  - registerMissingAccessPaths は、公開ページと登録済みを飛ばし、重複させない
  - 言語コード(ja・en)が無いときは例外
  - 引用符と改行・BOM を読める
  - pms_app の access_paths.csv を読め、パス・名前(ja・en)がそろっている
- `test/rfe_edit_interconversion_test.dart`
  - ${pair.page} RFE <-> Edit 相互変換
- `test/server_read_test.dart`
  - AccessPathPageRead
  - AppPageRead
  - DepartmentAccessPathPageRead
  - LanguageCodePageRead
  - StaffAccessPermissionPageRead
  - StaffEffectiveAccessPathPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
