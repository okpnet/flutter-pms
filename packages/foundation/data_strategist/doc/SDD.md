# data_strategist ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

data_strategist: この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換が可能になります。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/data_strategist` |
| Dart ファイル(生成物を除く) | 6 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ExpressionVisitorType` | 列挙型 | ExpressionBuilderに適用するVisitorのタイプ | `lib/src/query_state.dart` |
| `IQueryState` | インターフェイス | レポジトリの状態管理のインターフェイス | `lib/src/query_state.dart` |
| `QueryState` | クラス | レポジトリと取得設定を束ねる状態(State) | `lib/src/query_state.dart` |
| `IPredicateModel` | インターフェイス | 問い合わせ条件(取得件数・開始位置・抽出条件・並び順)を引き渡すモデルのインターフェイス | `lib/src/predicate_model.dart` |
| `PredicateModel` | クラス | 問い合わせ条件を保持する値オブジェクト(Value Object) | `lib/src/predicate_model.dart` |
| `IDataRepository` | インターフェイス | データの取得元(レポジトリ)のインターフェイス。 | `lib/src/data_repository.dart` |
| `QueryFacade` | クラス | [R]のデータ取得の問い合わせ窓口(Facade) | `lib/src/query_facade.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `query_builder`
- 利用元: `pms_app`(アプリ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`access_control`(パッケージ)、`cost`(パッケージ)、`dashboard_container`(パッケージ)、`item`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)、`data_test_harness`(パッケージ)、`pms_graphql`(パッケージ)、`entity_screens`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **概要**: この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換が可能になります。
- **ログについて**: `flutter-pms\packages\infra\logger_provider`を使用しますが、このライブラリのバグのみで、発生元の特定を困難にするため振る舞いに対するログは残しません。このライブラリ以外の例外も呼び発生元へ再スローする(またはスルーをする)ことで、このライブラリが発生元であるかのような例外を排除します。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/data_strategist_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
