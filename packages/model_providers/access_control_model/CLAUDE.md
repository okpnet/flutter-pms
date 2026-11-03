# CLAUDE.md

`access_control` 機能(ページアクセス管理)の GraphQL モデルパッケージ。ワークスペースの方針は [../../../CLAUDE.md](../../../CLAUDE.md) の「GraphQL モデル生成ルール」、フォルダ全体の決まりは [../CLAUDE.md](../CLAUDE.md) を参照。

## 対応する機能

`packages/features/access_control`(ページアクセス管理画面)と、認証(`auth_files` の承認・部署割り当て)が使うモデル。

## アクセス管理の決まり

- 権限は部署に付け、所属(`info_assign.enable = true`)する担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う。上位部署(`info_department_tree` の親)からは受け継がない。
- 権限の単位はアクセスパス(`info_access_path`。`usecase_path` がページのパス。これでページ遷移の可否を決める)。
- 同じアクセスパスが複数あれば1行にまとめ、書き込みはどれかが可なら可(OR)。`remove = true` は数えない。
- 個人で権限を減らすことはできない。外すときは所属を `enable = false` にし、残したいアクセスパスは個人の許可で足し直す。
- DB 側での強制はない。アプリが表示と編集を切り替える。

| YAML | 読み込み | 書き込み・登録 | 内容 |
| --- | --- | --- | --- |
| `access_path.yaml` | `AccessPathPage` | `AccessPathPageEdit`・`AccessPathPageCreate` | アクセスパス(ページ) |
| `department_access_path.yaml` | `DepartmentAccessPathPage` | `DepartmentAccessPathPageEdit`・`DepartmentAccessPathPageCreate` | 部署が使えるアクセスパスと write |
| `staff_access_permission.yaml` | `StaffAccessPermissionPage` | `StaffAccessPermissionPageEdit`・`StaffAccessPermissionPageCreate` | 担当者へ足す許可と write |
| `staff_effective_access_path.yaml` | `StaffEffectiveAccessPathPage` | なし | `v_staff_effective_access_path`(担当者 × アクセスパス。`can_write`、`from_department`、`from_staff`) |
| `app.yaml` | `AppPage` | なし | このアプリの `info_app`(固定の1件。名前で引く) |
| `label.yaml` | `LanguageCodePage` | `DictionaryPageCreate`・`DictionaryValuePageCreate`・`AppellationPageCreate` | 呼称(名前)を登録する部品 |

- このアプリの `info_app`(名前 `Product Manufacturing System`、symbol `0001`)は固定の1件で、名前はダミー以外でも変わらない。アクセスパスの `info_app_id` は画面で選ばせず、窓口 `AccessControlClient`(`lib/access_control_client.dart`)の `appId()` が名前で引いた id を埋め込む。更新(`AccessPathPageEdit`)は `info_app_id` を持たない。読み込みは `AppPage`(`gql/app.yaml`)。
- アクセスパスの登録は、呼称(名前・読み・略称の辞書と言語別の値)を先に登録する必要があるため、窓口 `AccessControlClient.createAccessPath` が 辞書 → 言語別の値(ja・en)→ 呼称 → アクセスパス の順に1テーブルずつ登録する(部品は `gql/label.yaml`)。読みと略称は空の値で作り、あとから編集で入れる。途中で失敗したときは、そこまでの登録が残る。
- アクセスパスの一覧は `apps/pms_app/doc/contents/access_paths.csv`(アプリのページが増えるたびに更新する。`apps/pms_app/CLAUDE.md`)。`AccessPathSeed.parseCsv` で読み、`registerMissingAccessPaths` で未登録の(公開でない)ページだけを登録する。登録の通信テストは書かない(サーバーのデータが変わるため)。順序と値は代役の通信路で確認する。
- 担当者・部署・所属の読み込み(`StaffPage`・`DepartmentPage`・`AssignPage`)は `organization_model` を使う。このパッケージには置かない。
- ログイン後は `StaffEffectiveAccessPathPage` を `info_staff_id` で絞って取得し、画面の表示と編集の可否を切り替える。

## Issue(未解決・検討中)

1.  **アクセスパス登録の途中失敗**: 登録(`AccessControlClient.createAccessPath`)は1テーブルずつ順に呼ぶため、途中で失敗すると呼称(辞書・言語別の値・呼称)だけが残る。現在はこのまま継続する。残骸の掃除が必要になったら、DB の関数にして1回の呼び出し(1トランザクション)に移すことを検討する(`DB の関数の呼び出し`は `../CLAUDE.md` を参照)。
1.  **画面の取得元(GraphQL 版)**: `packages/features/access_control` の `accessControlRepositories(GraphQLClient)` が、窓口 `AccessControlClient` の一覧・取得・保存・削除(論理削除。`~PageRemove`)を使う。アプリは `entityRepositoryOverridesProvider` で差し替える(`--dart-define=GRAPHQL_URL` を指定したときだけ。未指定はサンプル)。残り: ① ログイン後に PocketBase の `/api/app/graphql-token` を取得して `graphqlTokenProvider` に保存し、期限(15分)の前に取り直す、② 部署・担当者の参照先の選択肢を、各機能(`organization`)の GraphQL 版に合わせる。
1.  **ラベル**: 日本語・英語のラベル(`apps/pms_app/doc/contents/access_paths.csv` の名前を含む)は仮。全実装のテスト(画面どうしの兼ね合い)のあとに、修正の指示をもらう。

## 規則

1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    4.  細分化した機能別に`lib/`以下のディリクトリを2階層を限度(`lib/xxx/xxx`)として分ける。細分化の程度は、2階層になる程度の抽象度とする。
        1.  細分化する機能が少ない(5以下)のとき、1階層で良い(`lib/xxx`)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、ユーザーの仕様体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

