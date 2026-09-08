# gqlprvlib
## 概要
このライブラリは、アプリケーションに提供するGraphQLをとおして取得したデータをクエリクラスオブジェクト、ミューテーションクラスオブジェクト、JSON(Map<String,dynamic>)に相互変換し、アプリケーションからモデル管理の責務を分離します。
##　バックエンド仕様
1.  すべての構築が終わるまで認証であるKeyclaokは使いません。
1.  GraphQLはPostgraphileを使います。filterとnestedのプラグインは導入済です。
1.  Postgrapileとの通信はgqlibの責務です。
1.  ドメインモデルはgraphql_generatorから生成します。
##　フロントエンド仕様
1.  ほぼすべての画面はTrinaGridを使用して、リスト、ツリー表示を行います。
1.  レコードの編集や、登録画面は専用画面を使用します。
    1.  GoRouterを使って遷移します
    1.  TrinaGridのレコードからMapを取得して専用画面に渡します。
##  このライブラリの仕様
1.  Postgrapileが生成したスキーマは容量が大きすぎる(10メガバイト)を超えるため、データベース生成用のクエリdocs/06_create_test.sqlを参照します。
1.  アプリケーションの画面に提供するデータを取得、更新するデータを提供します。
    1.  Postgrapileへ渡すデータ、受け取るデータはドメインモデルです。
    1.  TrinaGridへ渡すデータはドメインモデルを変換したMapです
    1.  編集、更新するミューテーションはドメインモデルです。
    1.  TrinaGridの行データのMapからドメインモデルに変換して編集、更新する画面に渡します。
1.  TrinaGridでは、ネストされているMapをfieldとして参照できないのでnested_map_flattener.dartをとおして平坦なMapに変換します。
### 構成
+ lib
    + converters
        + _converters.dart//バレルファイル
        + 使用画面フォルダ//[要件](#要件)で指定されたときの画面単位のフォルダ
            + _使用画面フォルダ名.dart//バレルファイル
    + postgraphile//graphql_generatorの出力先
    + extensions//このライブラリが使用、または提供する拡張メソッド
    + gqlmdlib.dart//ライブラリのバレルファイル
+ graphql//graphql_generatorの入力

##　進め方
1つずつ解決していきます。そのため、このドキュメントの最後尾へ仕様として追記していきます。進め方に変更があった場合は、この項目に箇条として追加していきます。
追加ルールは、「年月日_3桁の連番:変更内容」にします。
##　仕様
[要件](#要件)にまとめます。
原則として、ローカルライブラリ「gqlib」で使用するIGraphQLConverterを実装したコンバーターは、[構成](#構成)に従ってlib/convertersnに保存します。
graphqlの生成指示は、共通項として必ず"remarks"、"update_at"、"remove"、"(update_user_id,update_user_history_id)->info_staff(shared_appellations_id)->shared_appellations(shared_dictionary_name_id)"(以下、nameとする)を取得します。このとき、nameは[共通名前仕様](#共通名前仕様)として参照されます。

### 共通名前仕様
1. "shared_appellations"が呼び出されたとき、"shared_dictionary"の列"ja","en"は、アプリケーションがローカライズのを基に引数として与えます。この引数によって、返すクエリ、ミューテーションが異なります。
1. "shared_appellations"は以下の構成になっており、"shared_dictionary"と各列は1対1で構成され、クエリモデルの場合には"nested_map_flattener.dart"によって平坦化のMap化され、ミューテーションモデルに変換するときに構造化します。
+ shared_appellations
    + shared_dictionary_name_id
        + shared_dictionary
            + ja//引数で返すか受け取るか決まる
            + en//引数で返すか受け取るか決まる
    + shared_dictionary_pronunciation_id
        + shared_dictionary
            + ja//引数で返すか受け取るか決まる
            + en//引数で返すか受け取るか決まる
    + shared_dictionary_nickname_id
        + shared_dictionary
            + ja//引数で返すか受け取るか決まる
            + en//引数で返すか受け取るか決まる
1.  shared_appellationsを参照するテーブルは、言語管理画面以外、指定しない限り全てこの1対1、平坦化、構造化の仕様です。
### 画面仕様
1.  source/画面仕様.mdによる

####　追記ルール
追加ルールは、「年月日_4桁のとおし番号:追加内容」とします。要件に変更があったとき、変更のとおし番号を参照します。
追加があったかどうかは、チャットでとおし番号を使った指示になります。年月日はいつ追加したかの記録です。
### 要件
2026/09/08_0001:pubspec.ymlからローカルライブラリ「gqlib」へアクセスし、内容を理解できるか確認してください。
2026/09/08_0002:nested_map_flattener.dartがTrinaGridを参照していますが、このライブラリではTrinaGridを参照しないので、Columnを受け取るメソッドを削除してください。
2026/09/08_0003:このドキュメントをとおしてライブラリの作成、完成後の保守で大幅な変更が予測される領域をリスクとして抽出してください。また、リスクの低減処置で対応できるかどうかも判定してください(例えば、データベースを構成を変更、テーブルの一部変更)。低減処置で対応できないものは、仕様そのものの変更としてコミットします。
2026/09/08_0004:ライブラリの動作に影響を与えない、依頼した結果の生成物はdocsに追加する。ファイル名には、実施した通し番号を含めること。
2026/09/08_0005:[共通名前仕様](#共通名前仕様)を追加しました。それに伴い[仕様](#仕様)の共通項の最後が省略されました。
2026/09/08_0006:[画面仕様](./source/views.md)は、画面別のGraphQLを作成する参照情報。Readは読み込み用クエリ、Editはミューテーションとする。graphqlフォルダ直下の、見出し2と同じ名前のフォルダに保存する。存在しない場合はフォルダを作成。ただし、graphql作成前に問題がある箇所はログを残す。ログは通し番号+"view_graphql_log"として保存する。
2026/09/08_0007:[画面仕様](./source/views.md)の"Company"の項目からGraphQLを作成する。
