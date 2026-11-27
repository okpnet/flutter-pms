# access_control ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

access_control: アクセス管理(ページのアクセスパス・部署の権限・担当者の許可)の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

アクセス管理(ページアクセス・部署のアクセス権・担当者のアクセス権)の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のメニュー「アクセス管理」(`tools/open-design/domains.js` の手書きの追加)に従う。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/access_control_api.dart` に公開する(別パッケージは作らない)。

### 1.2 範囲

- 場所: `packages/features/access_control`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`organization`(パッケージ)、`organization/example`(example)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`access_control_model`、`data_strategist`、`entity_screens`、`app_shell`、`loadux_lib`、`baton_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `AccessControlModule` | クラス | アクセス管理をアプリへ組み込むための口。 |
| FR-02 | `accessControlRepositories` | 関数 | アクセス管理の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-03 | `AccessBulkDestination` | クラス | アクセス権の一括設定の画面へ(部署または担当者を選び、アクセスパスの許可・書き込みをまとめて設定する)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: ページアクセス(アクセスパスの台帳) [テーブル構造] / [編集構造]。`usecase_path`(ページのパス)がページ遷移の有効・無効を決める。登録画面を持つ(パスと名前 ja・en を入力する。アプリ `info_app` は固定の1件で選ばせず、`AccessControlClient` が名前で引いて埋め込む)。既知のページは `apps/pm…
- **アクセス権設定**: `/access-control/bulk`(`AccessBulkPage`。契約 `access_control_api.dart` の `AccessBulkDestination(scope, targetId)`。**メニューは「アクセス権設定」の 1 項目だけ**で、台帳(アクセスパス・部署・担当者・実効)はメニューに出さず、画面の下の「台帳」か…
- **アクセス管理の決まり**: 権限は部署に付け、有効な所属(`info_assign.enable = true`)の担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う(減らせない)。上位部署からは受け継がない。
- **参照するモデル**: `packages/model_providers/access_control_model`(`gql/access_path.yaml`・`department_access_path.yaml`・`staff_access_permission.yaml`・`staff_effective_access_path.yaml`)を列・フィールドの参照元と…
- **実装の指針**: `AccessControlModule implements FeatureModule` を `lib/src/access_control_module.dart` に置き、公開は `lib/access_control.dart` のバレルから `AccessControlModule` だけにする。アプリは `lib/app.dart` の `fe…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/access_control.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 18 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 18 件。

- `test/access_bulk_test.dart`
  - 遷移先はパスに変換でき、JSON にできる。メニューの先頭に出る
  - 部署を選ぶと、保存済みの許可・書き込みがチェックに出る。選ぶまでは案内だけ
  - チェックを変えてまとめて保存できる(追加・削除・書き込みの変更だけを送る)
  - 許可を外すと書き込みも外れる。書き込みは、許可があるときだけ選べる。「元に戻す」で読み直す
  - 「表示中をすべて許可」は絞り込みの範囲だけに働く
  - 担当者でも同じに設定できる(担当者の許可の台帳へ書く)
  - 実効: 担当者を選ぶと、部署から受け継ぐ分を含めた権限が読み取り専用で出る(保存・一括の操作は無い)
  - 台帳(アクセスパス・部署・担当者・実効)の入口が、画面の下にある(メニューには出さない)
- `test/access_control_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/access_control_graphql_test.dart`
  - 4つの実体(アクセスパス・部署・担当者の許可・実効アクセスパス)の取得元がある
  - 一覧は、窓口の平らな型を画面の項目(フラグは 1/空)に変換する
  - 必須の項目が空の保存は、通信せず検証エラーにする
  - 削除は論理削除(remove=true)を呼ぶ
  - 実効アクセスパスは読み取り専用
  - アプリが取得元を渡すと、モジュールはサンプルの代わりにそれを登録簿へ登録する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
