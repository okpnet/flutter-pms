# query_builderライブラリ

## 概要
検索条件(`Expression`)と並び順(`SortExpression`)を組み立て、実行手段ごとの形に変換するライブラリです(Visitor / Builder)。変換先は、リスト(Dartの関数)・SQL・GraphQL(Hasura形式)・PostGraphile(connection-filter形式)です。データの取得元は`data_strategist`の`IDataRepository.find`に`Expression`を渡し、取得手段の違いは実装側が隠蔽します。

## 構成(`lib/src`)
- `predicates/expressions`: 式(`Expression`)。比較(equal・greater・like・startWith・endWith・in・null)、論理(and・or)、定数(`FieldExpression`・`NameFieldExpression`・`ValueExpression`)、`builders/`(変換先ごとのBuilder)。
- `predicates/visitors`: 式を巡回して変換先の形にするVisitor(`ListVisitor`・`SqlVisitor`・`GraphqlVisitor`・`PostgraphileVisitor`)。
- `sorts`: 並び順の式(`sort_expressions`)、Visitor(`sort_visitors`)、Builder(`builders`)。
- `debugs`: 式のデバッグ表示。
- `constants`: 定数・式のエラー。

## PostGraphile への変換
- `PostgraphileExpressionBuilder`は`{'filter': {...}}`を、`SortPostgraphileExpressionBuilder`は`{'orderBy': ['NAME_ASC', ...]}`を作る。
- 列名はスキーマを知らずに、式のフィールド名(平坦化キー、`office||zipCode`)のまま出す。関連をまたぐキーを入れ子のFilterへ展開するのは、スキーマの対応表を持つ`pms_graphql`の`FlatFilterConverter.convertTree`の責務とする(`query_builder`は`pms_graphql`に依存しない)。
- `GraphqlVisitor`はHasura形式(`_eq`・`_and`・`where`)であり、PostGraphileには使えない。

## 既知の課題
- `GraphqlVisitor`(Hasura形式)は`PostgraphileVisitor`の基底として使っているため残す。
- `predicates/expressions/compares`などが規則(2階層まで)より深い。


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
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、 ユーザーの仕様体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログがけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2. ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.	GOFデザインパターン
	1.	クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
	2.	必ずしもデザインパターンに割り当てる必要はない。