# access_control_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

access_control_model: access_control(ページアクセス管理)機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/access_control_model` |
| Dart ファイル(生成物を除く) | 9 |
| `lib/src` の分け方 | `contents(6)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `AccessPathPageEdit` | 更新 | `info_access_path` | `gql/access_path.yaml` |
| `AccessPathPageCreate` | 登録 | `info_access_path` | `gql/access_path.yaml` |
| `AppPage` | 読み込み | `info_app` | `gql/app.yaml` |
| `DepartmentAccessPathPage` | 読み込み | `info_department_access_path` | `gql/department_access_path.yaml` |
| `DepartmentAccessPathPageEdit` | 更新 | `info_department_access_path` | `gql/department_access_path.yaml` |
| `DepartmentAccessPathPageCreate` | 登録 | `info_department_access_path` | `gql/department_access_path.yaml` |
| `LanguageCodePage` | 読み込み | `shared_language_code` | `gql/label.yaml` |
| `DictionaryPageCreate` | 登録 | `shared_dictionary` | `gql/label.yaml` |
| `DictionaryValuePageCreate` | 登録 | `shared_dictionary_value` | `gql/label.yaml` |
| `AppellationPageCreate` | 登録 | `shared_appellation` | `gql/label.yaml` |
| `StaffAccessPermissionPage` | 読み込み | `info_staff_access_permission` | `gql/staff_access_permission.yaml` |
| `StaffAccessPermissionPageEdit` | 更新 | `info_staff_access_permission` | `gql/staff_access_permission.yaml` |
| `StaffAccessPermissionPageCreate` | 登録 | `info_staff_access_permission` | `gql/staff_access_permission.yaml` |
| `StaffEffectiveAccessPathPage` | 読み込み | `v_staff_effective_access_path` | `gql/staff_effective_access_path.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AccessControlClientException` | クラス | 通信・サーバーの異常、または固定のアプリ・言語が見つからないこと。 | `lib/access_control_client.dart` |
| `AccessPathSeed` | クラス | アクセスパスの登録の内容(パスと名前 ja/en)。`apps/pms_app/doc/contents/access_paths.csv` の1行に当たる。 | `lib/access_control_client.dart` |
| `AccessControlClient` | クラス |  | `lib/access_control_client.dart` |
| `AccessPathRecord` | クラス | アクセスパス(ページ)。名前は ja・en の2言語。 | `lib/access_control_records.dart` |
| `DepartmentAccessPathRecord` | クラス | 部署のアクセスパス(部署 × アクセスパス)。 | `lib/access_control_records.dart` |
| `StaffAccessPermissionRecord` | クラス | 担当者のアクセスパス許可(担当者 × アクセスパス)。所属部署の権限に足す。 | `lib/access_control_records.dart` |
| `EffectiveAccessPathRecord` | クラス | 担当者の実効アクセスパス(`v_staff_effective_access_path`。読み取り専用)。 | `lib/access_control_records.dart` |
| `AccessPathPageFilterSpec` | 抽象クラス |  | `lib/src/contents/access_path_page_filter_spec.dart` |
| `AppPageFilterSpec` | 抽象クラス |  | `lib/src/contents/app_page_filter_spec.dart` |
| `DepartmentAccessPathPageFilterSpec` | 抽象クラス |  | `lib/src/contents/department_access_path_page_filter_spec.dart` |
| `LanguageCodePageFilterSpec` | 抽象クラス |  | `lib/src/contents/language_code_page_filter_spec.dart` |
| `StaffAccessPermissionPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_access_permission_page_filter_spec.dart` |
| `StaffEffectiveAccessPathPageFilterSpec` | 抽象クラス |  | `lib/src/contents/staff_effective_access_path_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`access_control`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **対応する機能**: `packages/features/access_control`(ページアクセス管理画面)と、認証(`auth_files` の承認・部署割り当て)が使うモデル。
- **アクセス管理の決まり**: 権限は部署に付け、所属(`info_assign.enable = true`)する担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う。上位部署(`info_department_tree` の親)からは受け継がない。
- **Issue(未解決・検討中)**: **アクセスパス登録の途中失敗**: 登録(`AccessControlClient.createAccessPath`)は1テーブルずつ順に呼ぶため、途中で失敗すると呼称(辞書・言語別の値・呼称)だけが残る。現在はこのまま継続する。残骸の掃除が必要になったら、DB の関数にして1回の呼び出し(1トランザクション)に移すことを検討する(`DB の関数の呼び出…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/access_control_client_test.dart`(3)、`test/access_control_crud_test.dart`(7)、`test/access_path_flatten_roundtrip_test.dart`(7)、`test/access_path_registration_test.dart`(5)、`test/filter_spec_roundtrip_test.dart`(0)、`test/rfe_edit_interconversion_test.dart`(1)、`test/server_read_test.dart`(11)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
