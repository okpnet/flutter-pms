# system_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

system_model: system 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/system_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`system`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

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
| FR-01 | `CurrencyPage` | 読み込み | `mstr_currency` | レートは月ごとの概算で、追記のみ(直すときは新しい行を足す。取り消しは remove = true の更新 = CurrencyRatePageRemove)。 |
| FR-02 | `CurrencyPageEdit` | 更新 | `mstr_currency` | 通貨の更新(平らな列だけ。渡した列だけが変わる。名称(names)の ID は、共通関数で作る・変える)。論理削除は CurrencyPageRemove(remove = true) |
| FR-03 | `CurrencyPageCreate` | 登録 | `mstr_currency` | 通貨の登録。記号(symbol)は DB が採番する |
| FR-04 | `CurrencyAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(名称・読み・略称)の登録・更新(p_appellation_id が無ければ新規)。共通関数。返った ID を、本体の names に渡す |
| FR-05 | `CurrencyRateLatestPage` | 読み込み | `v_currency_rate_latest` | 通貨ごとの最新のレート(ビュー。基準通貨のレートは 1) |
| FR-06 | `CurrencyRatePage` | 読み込み | `trans_exchange_rate` | 為替レート(月ごとの概算。追記のみ) |
| FR-07 | `CurrencyRatePageCreate` | 登録 | `trans_exchange_rate` | 為替レートの登録(手入力・自動取得)。追記のみ。直すときは同じ通貨・月の行を足す(あとの行が有効) |
| FR-08 | `CurrencyRatePageEdit` | 更新 | `trans_exchange_rate` | 為替レートの取り消し(remove = true の更新だけ。ほかの列は変えない) |
| FR-09 | `UnitPage` | 読み込み | `shared_unit` |  |
| FR-10 | `UnitPageEdit` | 更新 | `shared_unit` | 単位の更新(平らな列だけ。渡した列だけが変わる。名称(names)・詳細(details)の ID は、共通関数で作る・変える)。論理削除は UnitPageRemove(remove = true) |
| FR-11 | `UnitPageCreate` | 登録 | `shared_unit` | ---- 登録(kind: create)。記号(symbol)は DB が採番する ---- |
| FR-12 | `UnitAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(名称・読み・略称)の登録・更新(p_appellation_id が無ければ新規) |
| FR-13 | `UnitTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | 文章(詳細)の登録・更新(p_text_id が無ければ新規) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `CurrencyPageFilterSpec` | 抽象クラス |  |
| FA-02 | `CurrencyRateLatestPageFilterSpec` | 抽象クラス |  |
| FA-03 | `CurrencyRatePageFilterSpec` | 抽象クラス |  |
| FA-04 | `UnitPageFilterSpec` | 抽象クラス |  |
| FA-05 | `UnitPageKeyName` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/system_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 13 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 13 件。

- `test/rfe_edit_interconversion_test.dart`
  - ${pair.page} RFE <-> Edit 相互変換
- `test/server_read_test.dart`
  - CurrencyPageRead
  - CurrencyRateLatestPageRead
  - CurrencyRatePageRead
  - UnitPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する
- `test/unit_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$UnitPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$UnitPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$UnitPageRfe <-> Map 往復変換が元と一致する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
