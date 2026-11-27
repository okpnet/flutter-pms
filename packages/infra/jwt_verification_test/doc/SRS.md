# jwt_verification_test ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

jwt_verification_test: テスト専用。PocketBase が発行した JWT を PostGraphile とモデルで検証する結合テスト。

`jwt_verification_test` は、**テスト専用**のプロジェクトです。PocketBase(`http://192.168.1.103:8090`)が発行した JWT を、PostGraphile(`http://192.168.1.100:5000/graphql`)とモデルパッケージ(`packages/model_providers/*_model`)で検証します。ライブラリのコード(`lib/`)は持たず、他のパッケージはこれに依存しません。

### 1.2 範囲

- 場所: `packages/infra/jwt_verification_test`(infra(通信・認証・ログ・テストの道具))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

なし。

### 2.2 依存先(ワークスペース内)

なし

テスト用: `logger_provider`、`data_test_harness`、`pbapi`、`pms_graphql`、`access_control_model`、`barcode_entry_model`、`item_model`、`organization_model`、`production_plan_model`、`purchasing_model`、`quality_document_model`、`quality_model`、`resource_model`、`sales_model`、`system_model`、`work_record_model`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

公開している型・関数は無い(生成物・アプリへの組み込みだけ)。

### 3.1 仕様の要点(`CLAUDE.md` より)

- **このプロジェクトについて**: `jwt_verification_test` は、**テスト専用**のプロジェクトです。PocketBase(`http://192.168.1.103:8090`)が発行した JWT を、PostGraphile(`http://192.168.1.100:5000/graphql`)とモデルパッケージ(`packages/model_providers…
- **保証すること(Issue 20261103_0001)**: | 保証 | テスト |
- **実行**: 資格情報・鍵は実行時に `--dart-define` で渡す(コード・Git には書かない)。詳細は [doc/contents/usage.md](doc/contents/usage.md)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | 対象外 |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 37 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 37 件。

- `test/model_session_test.dart`
  - どのモデルも、PocketBase の JWT でデータを取得できる
  - セッションを更新しながら(毎回 JWT を取り直して)データを取得し続けられる
  - 期限切れ → 取り直して再試行すると、続きを取得できる
  - 破棄してログインし直すと、再びデータを取得できる
  - どのモデルも、PocketBase の JWT は PostGraphile の検証を通る
  - セッションを更新しながら(毎回 JWT を取り直して)送り続けても、毎回検証を通る
  - 期限切れ → セッション確認と JWT の取り直し → 再試行すると、検証を通る
  - JWT の期限切れ: SessionExpiredError(expired, 401)
  - 不正な JWT(壊れた・別の鍵・署名なし・PocketBase のトークンを流用・改ざん): SessionExpiredError(invalid, 403)
  - セッションを破棄した(ログアウト): SessionExpiredError(missing)。サーバーへは送らない
  - 認証サーバー(PocketBase)に接続できないだけのときは、セッション切れではなく NetworkError
  - JWT なし(匿名): データを返さず、PermissionDeniedError
- `test/mutation_session_test.dart`
  - 管理者(pms_admin): 登録 → 読み込み → 論理削除 → 復元
  - 一般(pms_user): 既存の行を論理削除・復元できる(更新と削除の権限)
  - 一般(pms_user)が登録できる [DB の pms_user に INSERT 権限が要る]
  - 期限切れの JWT: 登録も論理削除も SessionExpiredError(expired)。何も変わらない
  - 改ざんした JWT(ロールの昇格)・別の鍵: SessionExpiredError(invalid)。何も変わらない
  - 匿名(JWT なし): PermissionDeniedError。何も変わらない
  - セッションを破棄した(ログアウト): SessionExpiredError(missing)。サーバーへは送らない
- `test/pocketbase_jwt_test.dart`
  - PocketBase が JWT を返す: 署名方式・対象(aud)・ロール・担当者・期限
  - JWT のクレームに個人情報・秘密が入っていない(許可したクレームだけ)
  - GraphQL 用の JWT は PocketBase のトークンとは別物で、toJson・toString に出ない
  - JWT は Riverpod のサービスが期限の手前まで保持する(速度のため再取得しない)。暗号化はしない
  - 期限の手前なら取り直す: セッションを更新しながら JWT を得続けられる
  - ログアウト(破棄)すると、JWT は得られない。サーバーへは問い合わせない
  - 管理者は管理者のロールの JWT を得る。ログアウトせずに別の利用者で入ると、前の利用者の JWT を使い回さない
  - 無効化された利用者は JWT を得られず、セッションも更新できない
  - 削除された利用者は JWT を得られず、セッションも無効になる
- `test/postgraphile_jwt_test.dart`
  - 期限切れは 401 jwt expired(許容の30秒を過ぎたもの)
  - 壊れた JWT・別の鍵の署名・署名なし(alg=none)・別のアルゴリズムは 403
  - 対象(aud)が違う・無い JWT は 403
  - クレームを書き換えると署名が合わず 403(利用者がロールを管理者へ上げられない)
  - 署名が正しくても、権限のないロール(postgres など)へは切り替えられない
  - JWT なし(匿名)は、データを返さない(HTTP 200 の permission denied)
  - 期限の許容(30秒)の範囲内の期限切れは、検証を通る
  - 【既知のリスク】期限(exp)の無い JWT も検証を通る
  - 有効な JWT(pms_user)でデータを取得できる [検証用 DB に authenticator → pms_user の GRANT と、

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
