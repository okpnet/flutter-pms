# access_control

アクセス管理(ページアクセス・部署のアクセス権・担当者のアクセス権)の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のメニュー「アクセス管理」(`tools/open-design/domains.js` の手書きの追加)に従う。
契約(遷移先・命令の型)が他の機能から必要になったら、`lib/access_control_api.dart` に公開する(別パッケージは作らない)。

## 画面(Html のメニュー)
1.  ページアクセス(アクセスパスの台帳) [テーブル構造] / [編集構造]。`usecase_path`(ページのパス)がページ遷移の有効・無効を決める。登録画面を持つ(パスと名前 ja・en を入力する。アプリ `info_app` は固定の1件で選ばせず、`AccessControlClient` が名前で引いて埋め込む)。既知のページは `apps/pms_app/doc/contents/access_paths.csv` から登録できる。
2.  部署のアクセス権(部署 × アクセスパス、書き込みの可否) [テーブル構造] / [編集構造]。
3.  担当者のアクセス権(所属部署の権限に足す個別の許可) [テーブル構造] / [編集構造]。
4.  実効アクセス権(担当者 × アクセスパス。読み取り専用。権限の出所は部署/個人)。

## アクセス管理の決まり
1.  権限は部署に付け、有効な所属(`info_assign.enable = true`)の担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う(減らせない)。上位部署からは受け継がない。
1.  同じ部署×アクセスパス、担当者×アクセスパスは重複させない。書き込みはどれか一つでも可なら可(OR)。削除済み(`remove`)は数えない。
1.  特定の人から部署の権限を外すときは所属を無効にし、残すアクセスパスは個人の許可で足し直す(画面で案内する)。
1.  DB 側での強制はない。権限の確認は、アプリがログイン後に実効アクセスパスを取得して行う。

## 参照するモデル
`packages/model_providers/access_control_model`(`gql/access_path.yaml`・`department_access_path.yaml`・`staff_access_permission.yaml`・`staff_effective_access_path.yaml`)を列・フィールドの参照元とする。担当者・部署の選択は `organization_model`。

## 実装の指針
1.  `AccessControlModule implements FeatureModule` を `lib/src/access_control_module.dart` に置き、公開は `lib/access_control.dart` のバレルから `AccessControlModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
2.  取得元の既定はサンプル(メモリ上)。GraphQL 版は `lib/src/graphql/access_control_repositories.dart` の `accessControlRepositories(GraphQLClient)`(`access_control_model` の窓口を使う)。アプリが `entityRepositoryOverridesProvider` に渡すと差し替わる(`pms_app` の `--dart-define=GRAPHQL_URL`)。削除は論理削除(`~PageRemove`)。影響が大きい項目(`packages/model_providers/CLAUDE.md` の「論理削除」)は、画面から削除できるようにする前に確認する。
3.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す。
4.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| アクセスパス | `accesspath` | テーブル構造 | 4 |  |
| 部署のアクセスパス | `deptaccesspath` | テーブル構造 | 4 | `department`, `accesspath` |
| 担当者のアクセスパス許可 | `staffaccesspermission` | テーブル構造 | 4 | `staff`, `accesspath` |
| 担当者の実効アクセスパス | `effectiveaccesspath` | テーブル構造 | 5 | `staff`, `accesspath` |
<!-- entity_gen:end -->

## example と多言語
1.  ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す。
2.  表示する文字列は`lib/src/i18n`の言語ファイル(Yaml)に置く。idは`String`(UUID)で扱う。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  画面イメージ(HTML)や使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  現在はGraphQLで取得していないため、通信テストは無い。取得元の単体テストは`RecordingDataRepository`で差し替える。
3.  GraphQLで取得するようにしたら、通信テスト(`test/xxx_connection_test.dart`)を追加し、`dart_test.yaml`に`server`タグを宣言する。


## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
