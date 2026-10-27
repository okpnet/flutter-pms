# CLAUDE.md

## このライブラリについて
`data_test_harness`は、テスト専用のライブラリです。データの取得元([IDataRepository](../../foundation/data_strategist/lib/src/data_repository.dart))とGraphQL(`pms_graphql`)をつなぐテストの道具を、一か所にまとめます。

目的は次の2つです。
1.  **テストの接続先をここだけが持つ**。`foundation`・`features`・`model_providers`のどこにも、接続先のURLを書かない。
2.  **`foundation`・`features`の単体テストで、GraphQLにもサーバーにも接続せずに取得元を差し替えられる**。

### 位置づけ
```
foundation(data_strategist, query_builder)   ← 本番もテストも、GraphQLを知らない
        ↑
infra(pms_graphql = IDataRepositoryのGraphQL実装)
        ↑
infra(data_test_harness = テスト専用)  ← dev_dependenciesにだけ書く
        ↑
foundation / features / model_providers の test/
```
`pms_graphql`は`data_strategist`に依存するため、`data_strategist`が`pms_graphql`(またはこのライブラリ)に依存すると循環する。そのため`data_strategist`・`query_builder`のテストはGraphQLに接続せず、代役([RecordingDataRepository])を使う。GraphQLを通した検証は`pms_graphql`と各`*_model`のテストで行う。

### 内容
| 名前 | 用途 |
|---|---|
| `TestServer` | 検証用サーバーの接続先の候補(`192.168.1.100`、`192.168.9.245`、`--dart-define=PMS_TEST_GRAPHQL_URL`)から、先に接続できたものを選び、`GraphQLClientProvider`を作る。どれにも接続できなければ`null` |
| `serverTest` | サーバーを使うテストの登録。`server`タグを付け、接続できなければ中止(skip)にする。`flutter test --exclude-tags server`で除外できる |
| `RecordingDataRepository<R>` | `IDataRepository<R>`の代役。`find`の引数を記録し、決めておいた結果(または`onFind`)を返す |

### 使い方
```yaml
# 使う側の pubspec.yaml(必ず dev_dependencies)
dev_dependencies:
  data_test_harness:
    path: ../../infra/data_test_harness
```
```dart
// サーバーを使うテスト(読み取り専用)
serverTest('PositionPageRead returns Ok', (server) async {
  final result = await server.provider.query(...);
});

// サーバーを使わない単体テスト
final repo = RecordingDataRepository<List<Row>>(result: rows);
await sut.load(repo);
expect(repo.calls.single.take, 20);
```
使う側のパッケージの`dart_test.yaml`に`server`タグの宣言が必要です。

## 規則(このライブラリ固有)
1.  `dependencies`に書かない。ワークスペース内のどこからでも`dev_dependencies`にだけ書く(`test/dev_only_dependency_test.dart`が検査する)。
1.  サーバーのデータを変更するテストには使わない(読み取り専用)。
1.  接続先を増やす・変えるときは`TestServer.candidateUrls`だけを直す(`pms_graphql/CLAUDE.md`の記述も合わせる)。
1.  テスト専用のため、ライブラリ自身はログを残さない(失敗はテストの結果として報告される)。

##  規則
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
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。(このライブラリはテスト専用のため、上の固有規則のとおりログを残さない。)
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。
