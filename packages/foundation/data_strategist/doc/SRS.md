# data_strategist ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

data_strategist: この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換が可能になります。

### 1.2 範囲

- 場所: `packages/foundation/data_strategist`(foundation(画面を持たない汎用部品))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`access_control`(パッケージ)、`cost`(パッケージ)、`dashboard_container`(パッケージ)、`item`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)、`data_test_harness`(パッケージ)、`pms_graphql`(パッケージ)、`entity_screens`(パッケージ)

### 2.2 依存先(ワークスペース内)

`query_builder`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `ExpressionVisitorType` | 列挙型 | ExpressionBuilderに適用するVisitorのタイプ |
| FR-02 | `IQueryState` | インターフェイス | レポジトリの状態管理のインターフェイス |
| FR-03 | `QueryState` | クラス | レポジトリと取得設定を束ねる状態(State) |
| FR-04 | `IPredicateModel` | インターフェイス | 問い合わせ条件(取得件数・開始位置・抽出条件・並び順)を引き渡すモデルのインターフェイス |
| FR-05 | `PredicateModel` | クラス | 問い合わせ条件を保持する値オブジェクト(Value Object) |
| FR-06 | `IDataRepository` | インターフェイス | データの取得元(レポジトリ)のインターフェイス。 |
| FR-07 | `QueryFacade` | クラス | [R]のデータ取得の問い合わせ窓口(Facade) |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **概要**: この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換が可能になります。
- **ログについて**: `flutter-pms\packages\infra\logger_provider`を使用しますが、このライブラリのバグのみで、発生元の特定を困難にするため振る舞いに対するログは残しません。このライブラリ以外の例外も呼び発生元へ再スローする(またはスルーをする)ことで、このライブラリが発生元であるかのような例外を排除します。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/data_strategist.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 8 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 8 件。

- `test/data_strategist_test.dart`
  - copyWith は指定した項目だけ差し替える
  - toJson は件数と開始位置を含む
  - limit 省略時は defaultTakeCount
  - limit を指定できる
  - toJson
  - execute は条件をそのままレポジトリへ渡し結果を返す
  - レポジトリの例外は加工せず伝わる
  - toJson は state を含む

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
