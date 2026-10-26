# CLAUDE.md

このファイルは、このリポジトリでコードを扱う際に Claude Code (claude.ai/code) へ向けたガイダンスを提供します。

## このパッケージについて

`gqlib` は `graphql_flutter`/`graphql` をラップし、型付き・Result方式のクライアントとして
提供する Flutter/Dart パッケージで、`flutter-pms` アプリ全体から利用されます。モノレポ内の
`flutter_pub_lib/gqlib` に配置されており、兄弟パッケージとして `logger_provider`,
`data_strategist`, `query_builder`, `ui_mapper`, `undo_redo`, `view_responsiveness`
(`../` 配下) が存在します。`pubspec.yaml` の `logger_lib: path: ../../flutter_pub_lib/logger_lib`
が示すとおり `logger_provider` へ相対パス依存しているため、`gqlib` を解決するにはこの兄弟パッケージの
チェックアウトが存在している必要があります。

## コマンド

このディレクトリ (`flutter_pub_lib/gqlib`) から実行します。

- 依存関係のインストール: `flutter pub get`
- 全テストの実行: `flutter test`
- 単一テストファイルの実行: `flutter test test/gqlib_test.dart`
- 名前を指定して単一テストを実行: `flutter test --name "<test description>"`
- 静的解析 (`analysis_options.yaml` 経由で `flutter_lints` を使用): `flutter analyze`

`test/` は `lib/` 配下の各サブライブラリに対応するディレクトリ構成になっています
(`extends/`, `results/`, `exceptions/`, `graphql_converters/`, `providers/`)。
`test/gqlib_test.dart` はバレルファイル (`lib/gqlib.dart`) の公開APIサーフェスに対する
スモークテストです。`providers/client_provider_offline_test.dart` は `gql_link` の `Link` を
差し替えたフェイクレスポンスで `GraphQLClientProvider` を完全オフラインに検証し、
`providers/client_provider_public_api_test.dart` はオープンな公開GraphQL API
(`https://countries.trevorblades.com/graphql`) に対する実ネットワーク統合テストで、
`network` タグが付いています(オフライン環境では `flutter test --exclude-tags network` で除外可能)。

## アーキテクチャ

公開APIの全体は `lib/gqlib.dart` で定義されており、5つのサブライブラリを re-export しています。
それぞれ専用のプライベートバレルファイル (`_*.dart`) を窓口としています。

- `providers/` — メインのエントリポイントである `GraphQLClientProvider`
  (`providers/client_provider.dart`)。`graphql` の `GraphQLClient` を以下の機能でラップします。
  - `Future.timeout` による呼び出しごとのタイムアウトで、`GraphqlTimeoutException` に変換されます。
  - `logger_provider` の `ILoggerProvider` を任意で受け取り、すべてのクエリ/ミューテーションおよび
    エラーをログ出力します。
  - `query(QueryOptions)` — 読み取り用。
  - `save(List<IEditModel>)` — 書き込み用。各モデルを `GraphQLConverterCollection` を通して、
    `model.isNew` の値に応じた insert/update の `MutationOptions` に変換します。
  - Hasura 専用の実行パス (`isHasura: true`)。同一の GraphQL ドキュメントを持つミューテーションは
    `groupListsBy` でグルーピングされ、バッチ化されます。同一ドキュメントの `insert` 用変数はすべて
    1つの `objects` ミューテーションにマージされ、`update` は各モデルごとに個別実行されます。
    非Hasuraの実行パスでは、すべてのミューテーションを個別に独立実行するだけです。
  - `GraphQLClient` の結果はすべて生の `QueryResult` ではなく `_createResult` を通して
    `GraphqlProverResult` に正規化されます。この処理では内部の例外の型
    (`ServerException`, `SocketException`, `TimeoutException`, `FormatException` など) を
    パターンマッチし、対応する `GraphqlProviderException` のサブタイプに変換します。

- `results/graphql_prover_result.dart` — Result方式の sealed 型 `GraphqlProverResult<T>` で、
  `Ok<T>`/`Err<T>` のバリアントを持ちます。`Err` は型付きの `GraphqlProviderException`、生の
  `graphqlErrors` 文字列、そして部分的な `data` を保持します。これは公開されているすべての
  読み取り/書き込み操作の戻り値の型であり、呼び出し側は GraphQL レベルの失敗に対して例外を
  catch するのではなく、パターンマッチすることが想定されています。

- `exceptions/` — `Err` の中で使われる `GraphqlProviderException` の sealed 階層
  (`ProviderError`, `NetworkError`, `TimeoutError`, `ServerError`, `DeveloperError`)、および
  `GraphqlTimeoutException`（実際の `Exception` で、`.timeout(...)` 呼び出しの周辺で
  throw/catch され、適宜 `TimeoutError` へ変換されたり再スローされたりします）。

- `edit_models/iedit_model.dart` — `IEditModel` インターフェース (`isValid`, `isNew`)。
  アプリケーション側のモデルは、`GraphQLClientProvider.save()` に渡すためにこれを実装する
  必要があります。`isNew` によって insert か update かが決まります。

- `graphql_converters/` — `IEditModel` の型を GraphQL ミューテーションへマッピングするための
  拡張ポイントです。
  - `converters/i_graphql_converter.dart` — `IGraphQLConverter<T extends IEditModel>`。
    `toInsertOptions`/`toUpdateOptions` を持ち、アプリ側でモデルの型ごとに1つ実装します。
  - `collection/collection_item.dart` — `CollectionItem<T>` は、コンバーターとそのモデル型
    (`T.toString()` 経由) をペアにします。
  - `collection/graphql_converter_collection.dart` — `GraphQLConverterCollection` は
    実行時型名をキーとするレジストリで、`save()` から各モデルに対応するコンバーターを
    探すために参照されます。モデルの型に対応するコンバーターが登録されていない場合は
    例外をスローします。

- `extends/dupricate.dart` — 独立した汎用ユーティリティ `removeDuplicates<T>(list,
  {preferLast})`。`save()` がミューテーションを構築する前にモデルリストの重複を除去するために
  使用します（`preferLast: true` のため、後から出てきた重複の方が優先されます）。また、
  どのエントリが除外されたかをログに残すためにも使われます。

### `save()` のデータフロー

`List<IEditModel>` → すべてのモデルの型に対応するコンバーターが存在するか検証 →
`removeDuplicates` (重複除去 + ログ) → 残った各モデルについて、対応する
`IGraphQLConverter` を探し、`isNew` に基づいて `(MutationType, MutationOptions)` の
タプルを構築 → `_execute` が `isHasura` によって分岐し、ドキュメント単位でバッチ化
(Hasura) するか、独立して実行する (非Hasura) → 各 `MutationOptions` はタイムアウト計測・
ログ出力のうえ `client.mutate` で実行 → `GraphqlProverResult` へ正規化。
## コメント
1.  日本語でまとめる
1.  バレルファイルへのコメントは不要。
1.  クラス、またはインターフェイスの機能の概要
1.  プロパティは機能のうち、どこに影響を与えるか
1.  メソッドのコメント
  1.  メソッドの機能
  1.  戻り値のあるメソッドは、どのような時に呼び出すか
  1.  発生しうる例外。ただし、例外が存在しない場合は不要。
  1.  プロパティや参照の値を変更する場合は、その警告
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
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。
7.  テスト
    1.  GraphQLのテストには`graphql_provider_lib`(`gqlprvlib`)が生成したクエリ文書・型を使用する。
    2.  テスト接続先は`http://192.168.1.100:5000/graphql`または`http://192.168.9.245:5000/graphql`を使用する(先に接続できた方)。どちらにも接続できないときはテストを中止(skip)する。接続を要するテストには`server`タグを付け、`flutter test --exclude-tags server`で除外できる。
