# gqlprvlib 要件定義

要件0001〜0049を統合・整理した、現在有効な要件定義である(2026/10/02再構成)。
各要件の原文と経緯は`docs/requirements_0001-0049_history.md`を参照する。
本文中の`(0046)`のような番号は、根拠となった要件の通し番号である。
新しい要件は末尾の「要件(0050以降)」へ追記する。

## 1. 目的

このライブラリは、PostGraphile(GraphQL)とアプリケーション画面の間でデータの形を相互変換し、アプリケーションからモデル管理の責務を分離する。

- PostGraphileとの受け渡しはドメインモデル(graphql_codegenが生成するクエリ・ミューテーションのクラス)で行う。
- 一覧画面(TrinaGrid)にはドメインモデルを平坦なMap(`Map<String, dynamic>`)に変換して渡す。
- 編集画面には、TrinaGridの行のMapからドメインモデルへ戻して渡し、編集・更新はミューテーションのモデルで行う。

## 2. 前提

### 2-1. バックエンド

- GraphQLサーバーはPostGraphile。プラグイン`postgraphile-plugin-nested-mutations`・`postgraphile-plugin-connection-filter@2.3.0`を導入済み。
- 認証(Keycloak)はすべての構築が終わるまで使わない。
- PostGraphileとの通信は、ローカルライブラリ`gqlib`の責務とする。
- ビュー(`v_*_descendants`等)と親テーブルの関連は、DB側のコメント(スマートタグ`@foreignKey`)でPostGraphileへ伝える。

### 2-2. フロントエンド(利用側アプリケーション)

- ほぼすべての画面はTrinaGridで一覧・ツリーを表示する。
- レコードの編集・登録は専用画面で行い、GoRouterで遷移する。遷移時はTrinaGridの行のMapを渡す。
- このライブラリはTrinaGridを参照しない(0002)。

## 3. 構成

```
lib/
  converters/             gqlibのIGraphQLConverterを実装したコンバーター
    _converters.dart        バレルファイル
    <画面フォルダ>/          要件で指定されたときの画面単位のフォルダ(_<画面フォルダ名>.dart がバレル)
  contents/               平坦化キーの定数(<画面>_keyname.dart)、content_variable.dart
  extensions/             このライブラリが使用・提供する拡張メソッド(nested_map_flattener.dart等)
  graphql/                graphql_codegenの入力
    schema.graphql          生成用スキーマ(絞り込み済み、4-2節)
    <画面フォルダ>/          画面ごとのGraphQL(read/edit/rfe)
  postgraphile/           graphql_codegenの出力(生成モデル)
  gqlmdlib.dart           ライブラリのバレルファイル
source/
  view.yaml               画面仕様(GraphQL生成の入力)
  schema.json             view.yamlのJSON Schema
  27_yaml_to_graphql_conversion_rules.md  view.yaml→GraphQLの変換規則
  schema.full.graphql     PostGraphileから取得した全量のスキーマ(git対象外、4-1節)
test/                     モデルごとの往復変換テスト、RFE/Edit相互変換テスト
docs/                     要件ごとの実施ログ
```

## 4. スキーマとモデル生成

### 4-1. 全量スキーマの取得(0026・0049)

- 取得先は`http://192.168.1.100:5000/graphql`とする。接続できない場合は`http://192.168.9.245:5000/graphql`へ切り替える。どちらにも接続できない場合は中止する。
- 取得したSDLを現行の全量スキーマと比較し、差分があれば置き換える。差分(型の追加・削除・変更)はログに記録する。
- 取得は`dart run tool/fetch_schema.dart`で行う(0049)。
  - イントロスペクションで取得し、SDLへ変換して型単位で比較する。差分があれば`source/schema.full.graphql`を置き換える。
  - 接続先の切り替えも自動で行う。Node.jsは不要。
  - 置き換えた後は、4-2節の絞り込みとbuild_runnerを続けて実行する。
- 全量スキーマ(約20MB、入力型約1万)は**git対象外**とする。

### 4-2. 生成用スキーマ(絞り込み)(2026/10/02、0014を置き換え)

- 全量スキーマをそのままgraphql_codegenに渡すと、`schema.graphql.dart`(約1万の入力型、563MB)の生成に6GB超のメモリを要し、実行できない。
- 代わりに、`lib/graphql/`配下の画面のGraphQLが**実際に使う型・フィールド・引数だけ**に絞り込んだスキーマを生成し、`lib/graphql/schema.graphql`としてgraphql_codegenに渡す。
  - 絞り込みは`dart run tool/prune_schema.dart`で行う。入力型は約1万から約200、`schema.graphql.dart`は563MBから2MBになった。
  - 変数で渡す入力型(一覧の入れ子編集等)には、スカラー・Enum・葉の入力型、入れ子書き込みの骨格(patch・updateBy等)、呼称の入れ子を残す。
    それ以外の入れ子(他テーブルへの入れ子書き込み)を変数で渡す必要が出た場合は、ツールの規則に追加する。
  - 全量スキーマは、graphql_codegenの読み込み対象外の場所(`source/schema.full.graphql`)に置く。
- 全量スキーマの更新後、および画面のGraphQLを追加・変更した後は、必ず「絞り込み → build_runner」の順で実行する。
- 生成用スキーマに含まれない型・フィールドは、生成モデルにも含まれない。新しい画面で使う場合は、絞り込みを再実行する。

### 4-3. build_runner(0012・0024・0042)

- 全量スキーマ(したがって生成用スキーマ)が変わった場合は、`schema.graphql.dart`を生成する(0024)。
- 画面のGraphQLをすべて作成した後に、build_runnerでモデルを生成する。
- 生成とテストは、結合を除き最小単位に分割して順次実行する(`--build-filter`で画面単位)。
- 実行中は10分間隔でハングアップを監視する。停止状態なら原因を調査し、権限の範囲で除去(タスクキル等)して再評価する。
- build_runnerが`Null check operator used on a null value`(`_writeBuildOutput`)で出力を書き込めない場合は、該当の既存出力を削除して再実行する(0047・0048)。

### 4-4. 大きな生成物の扱い(0015・0016)

- 生成モデルのうち5000KBを超えるもの、および`schema.graphql.dart`は、`.gitignore`に追加する。
- 加えて、アナライザの除外(`analysis_options.yaml`)と、VS Codeの監視・検索の除外(`.vscode/settings.json`)にも加える。
- `.gitignore`はサイズで動的に指定できないため、build_runnerを実行するたびに生成物のサイズを確認し、該当するものを個別に追記する。

## 5. 画面仕様からGraphQLへの変換

### 5-1. 入力(0033)

- 変換の対象は`source/view.yaml`とする。
- 規則は`source/schema.json`と`source/27_yaml_to_graphql_conversion_rules.md`に従う。

### 5-2. kindと生成物

| 指定 | 生成物 |
|---|---|
| `kind: read` | 読み込み用クエリ |
| `kind: edit` | ミューテーション |
| `kind: edit`かつ`generateRfe: true` | 同じcolumnsツリーをSELECTとして解釈した読み込み専用クエリ(RFE: read for editing)を自動導出する(0037)。独立したkind:RFEは廃止 |

- editのツリー内の子(0047):
  - IDの割り当てのみの子は、readを参照し`editable: false`を指定する。子は書き込まず、親側の`using`のFK列だけを書き込む。
  - 親とともに編集する子は、editを参照し`editable: true`を指定する。この子は常に親のRFEに含まれる。
  - readを参照する子は、`editable: false`を省略しない。
- `generateRfe`は子の位置にも書けるが、子の位置では独立したRFEを生成しない(0047)。

### 5-3. 命名(0033・0037)

- ディレクトリ名・ファイル名はスネークケースとする。
- ディレクトリ名はトップノード名とする。
- ファイル名は「トップノード名_kind」(`_read`/`_edit`)とし、自動導出するRFEは`_rfe`とする。
- 平坦化キーの定数は`lib/contents/<トップノード名>_keyname.dart`に置き、クラス名は`<トップノード名>KeyName`とする(5-6節)。

### 5-4. 共通項(0005)

- すべての取得に、`remarks`・`update_at`・`remove`・更新者(`update_user_id`+`update_user_history_id`→スタッフ→呼称)を含める。
- 更新者の呼称は、5-5節の共通名前仕様として扱う。
- readには削除フラグ(`remove`)の条件を含める。指定が無い場合はエラーとして記録する(0028)。

### 5-5. 共通名前仕様(shared_appellations)

- `shared_appellations`は、名前・読み・略称の3つの`shared_dictionary`を1対1で持つ。
  - `shared_dictionary_name_id`・`shared_dictionary_pronunciation_id`・`shared_dictionary_nickname_id`
  - 各辞書は言語ごとの値(ja/en)を持つ。
- クエリのモデルは平坦化してMapにし、ミューテーションのモデルに変換するときに構造化する。
- 言語管理画面以外で`shared_appellations`を参照するテーブルは、指定が無い限りすべてこの仕様に従う。
- 言語の引数(0036・0048):
  - read: 表示言語1つを`$languageCodeId`で受け取る。
  - edit・RFE: `$jaLanguageCodeId`/`$enLanguageCodeId`(必須)で受け取り、ja/en両方を常に取得・更新する。
  - `$ja`/`$en: Boolean!`と`@include`による条件付き取得は使わない。

### 5-6. その他の変換規則(0018・0027・0032)

- RFEで関連の配列を取得する件数は引数で受け取る。引数が無い場合は30件とする。
- 1対多の列(先頭)は、更新日時が最新の先頭1レコードを指す。
- 列(結合)はカンマ区切りの文字列とする。
- GraphQLの列の型は、`GraphQLTypeKind`(content_variable.dart)のEnumに重複せず追加する。Enumは文字列から型を受け取り、文字列へ復元できること。
- 平坦化キーは、コード補完できるよう定数にする。
  - 型は`static const ContentVariable`(名前とGraphQLの型の組)とする。
  - 定数名は`||`を`_`に置き換えた名前とする。
  - RFEの定数は作らない。
- 監査列(`update_at`/`update_user_id`/`update_user_history_id`/`remove`)はRFEでのみ取得し、Editの引数・結果には含めない(0048)。
  - `update_at`はトリガーで設定されるが、Editに含めるとプログラマが意図的に変更できてしまうため。
  - 保存後に最新の監査列が必要な場合は、RFEを再取得する。

### 5-7. 評価・生成の進め方(0021・0022・0025・0034・0035・0044)

- GraphQLを作成する前に、view.yamlを評価する。
  - 変換できない箇所は、理由をログに記録する。
  - テーブル・列を特定できない場合は、ログに記録したうえでそのテーブルの処理をスキップする。
- editが含む参照列は、各テーブルのIDを含むオブジェクトへ変換できなければならない。IDの漏れは追加し、ログに記録する。
- 変換にかかる提案はログに記録し、view.yamlの該当箇所にも残す(0025・0029)。
- エラーが無い状態になってからGraphQLを作成し、モデルを生成する。
  - 対象は変更を含むノードとする。生成済みで変更が無いものは対象外とする。
  - モデルの生成は、GraphQLの生成に成功したものだけを対象とする。

## 6. テストと品質条件

| 条件 | 内容 |
|---|---|
| 往復変換(0013・0032・0044) | 生成モデルごとに、`nested_map_flattener.dart`で平坦化→復元して元と一致するテストを作る。再生成のときはテストも見直す |
| RFE/Edit相互変換(0046・0048) | `test/rfe_edit_interconversion_test.dart`で全画面を検証する。RFE→Editの結果モデル・引数モデル、Editの結果モデル→RFEのいずれも変換できること。変換できない場合は、view.yamlの修正案をログに出力する。監査列がRFEにのみあるのは方針どおり(A1)とし、条件付き取得の混入は失敗(F6)とする |
| nested_map_flattener.dartの扱い(0044) | 相互変換できないときだけ見直す。根本的な見直しが必要なら提案し、それ以外は対応できるよう修正する |

## 7. 作業の進め方

- 要件は1つずつ解決する。チャットで通し番号を使って指示する。
- 要件の追記形式は「年月日_4桁の通し番号:内容」とし、要件に変更があったときは変更の通し番号を参照する。
- ライブラリの動作に影響しない成果物(ログ・調査結果等)は`docs/`に置き、ファイル名に通し番号を含める(0004)。
- 直前までの指示・実行済みの内容と重複し、実行しても結果が変わらないと判断できる場合は、実行せずログを残してスキップする(0020)。
- view.yaml内の要件コメント、および確認用のコメント(`要件0046確認`等)は、ユーザーが確認後に削除する。Claudeは定義の変更なしに削除しない(0045・0046)。
- 生成やテストの実行が環境の制約(メモリ・ツールの欠如等)で完了しない場合は、状態を元に戻し、原因と対応案をログに残してユーザーの判断を仰ぐ。

## 8. 保留・既知の課題

- `DepartmentPage.descendants`: 0048で保留とした。0049でビューの関連がスキーマに追加され、取得できるようになった。view.yaml・GraphQLへの反映は未着手。
- `CompanyPageEdit.provision`: `ProvisionPageEdit`のcolumnsを複製している(`requiredWhere`の扱いのため。docs/0048ログ3章)。

## 要件(0050以降)

追記形式: 年月日_4桁の通し番号:内容
