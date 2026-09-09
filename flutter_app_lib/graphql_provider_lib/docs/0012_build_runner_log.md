# 0012_build_runner実行ログ

対象: 要件0006・0007(Company画面のGraphQL)と要件0011(ファイル命名規則の変更)の結果から、
`build_runner`で適切にモデルクラス(`*.graphql.dart`)が生成されるかを確認する。

結論: **`build.yml`(build.yaml)に問題があるため、モデルクラスは1件も生成されなかった。**
要件0012の指示(「build.ymlに問題があるときは以降の処置を停止し、Logに修正内容を記録する」)に
従い、以降の処置(0011のGraphQLファイル自体の編集、および要件0013)は停止する。

## 実行コマンドと結果

```
$ dart run build_runner build --delete-conflicting-outputs
W These options have been removed and were ignored: --delete-conflicting-outputs
W The package `gqlprvlib` does not include some required sources in any of its targets (see their build.yaml file).
  The missing sources are:
    - $package$
    - lib/$lib$
  Built with build_runner/aot in 16s; wrote 0 outputs.
```

`graphql_codegen`ビルダーが一切実行されず(`.graphql.dart`が0件)、`lib/postgraphile`配下には
何も生成されなかった。

## 原因分析

現在の`build.yaml`:

```yaml
targets:
  $default:
    sources:
      -  postgraphile/**
    builders:
      graphql_codegen:
        options:
          schemaPath:
            - "postgraphile/schema.graphql"
          assetsPath: graphql/**/*.graphql
          outputDirectory: "../lib/postgraphile"
          clients:
            - graphql_flutter
```

インストール済みの`graphql_codegen`(pub.dev, 3.0.2)のソース
(`lib/builder.dart`, `lib/src/config/config.dart`)を確認し、以下3点の問題を特定した。

| # | 問題 | 根拠 |
|---|---|---|
| 1 | `sources:`が`postgraphile/**`のみに制限されており、`graphql_codegen`ビルダーが要求する`lib/$lib$`(ビルダーの起動トリガー)や既定ソース(`$package$`)を除外してしまっている。これが実行時警告の直接の原因。 | 実行結果の警告メッセージ、および`graphql_codegen`パッケージ自身の`build.yaml`で`build_extensions: {'$lib$': ['.graphql.dart']}`と宣言されていることを確認(ビルダーは`$lib$`をトリガーに動作する)。 |
| 2 | `schemaPath`は`graphql_codegen`に存在しないオプションであり、設定しても無視される。要件0008で参照先とした`source/schema.graphql`は、現在の設定ではビルダーに一切伝わっていない。 | `lib/src/config/config.dart`のオプション一覧(`clients`,`scalars`,`enums`,`addTypename`,`outputDirectory`,`assetsPath`,`generatedFileHeader`,`scopes`,`namingSeparator`,`extraKeywords`,`disableCopyWithGeneration`,`allowMissingNullableKeysInFromJson`,`setOperationName`)に`schemaPath`は含まれない。README「Options」表にも同様に存在しない。 |
| 3 | `graphql_codegen`は「スキーマ定義ファイルと問い合わせ(query/mutation)ファイルを、同一の`assetsPath`グロブで一括して読み込む」設計であり、スキーマだけを別ディレクトリから読み込む仕組みがない(`lib/builder.dart`の`build()`内で、`assetsPath`に一致した全ファイルを`entries`としてまとめて`generate()`に渡している)。そのため、要件0008で定めた`source/schema.graphql`(グロブ`graphql/**/*.graphql`に一致しない場所)と、要件0006で定めた`graphql/`配下の問い合わせファイルを、今の`assetsPath`(単一グロブ)のままでは同時に拾えない。 | 同上`build()`の実装、およびREADME「Change output directory」「Multiple schemas」の記述(スキーマ用の個別パス指定オプションが存在しないこと)。 |

## 修正内容(提案。本ログに記録し、build.yaml自体の書き換えは行っていない)

上記#3は単純な設定ミスではなく、「スキーマを`source/`、問い合わせを`graphql/`に分離する」という
[CLAUDE.md](../CLAUDE.md)の現在の構成(要件0006・0008)と、`graphql_codegen`3.xの設計
(スキーマも問い合わせも同一グロブで読み込む)が構造的に相容れない点に起因する。
そのため修正案を2つ提示し、どちらを採用するかはCLAUDE.mdの仕様判断(0003の判定基準に基づけば
「低減処置では対応できず、仕様変更が必要」に該当)として残す。

### 案A: スキーマ・問い合わせを`lib/`配下に統合する(graphql_codegenの既定構成に合わせる)

`source/schema.graphql`と`graphql/**`を廃止し、`lib/graphql/schema.graphql`・
`lib/graphql/Company/company_read.graphql`のように`lib/`配下へ移動する。
この場合、`assetsPath`は既定値(`lib/**{.graphql,.gql,.graphqls}`)のままでよく、`sources:`の
カスタム設定も不要になる(`lib/`は既定ソースに含まれるため)。CLAUDE.mdの[構成](../CLAUDE.md#構成)・
[このライブラリの仕様](../CLAUDE.md#このライブラリの仕様)の記載変更が必要。

### 案B: 現行のディレクトリ構成(`source/`・`graphql/`)を維持し、build.yamlのみ修正する

```yaml
targets:
  $default:
    sources:
      - graphql/**
      - source/schema.graphql
      - lib/**
      - $package$
    builders:
      graphql_codegen:
        options:
          assetsPath: "graphql/**{.graphql,.gql,.graphqls}"
          outputDirectory: "/lib/postgraphile"
          clients:
            - graphql_flutter
```

ただし#3のとおり、`assetsPath`は単一グロブでしか指定できず、`source/schema.graphql`を
このグロブに含めることができない。そのため、この案を成立させるには追加で
**`source/schema.graphql`を`graphql/schema.graphql`としてコピー(または移動)し、
`graphql/**`一括をassetsPathの対象にする**必要がある。これは要件0008「Postgrapileが生成した
スキーマは source/schema.graphql を参照する」との整合を取り直す必要がある(スキーマの実体は
`source/`に置いたまま、ビルド時にのみ`graphql/`へコピーする、等の運用ルールを別途決める必要がある)。

`outputDirectory`は、要件0006・[構成](../CLAUDE.md#構成)の意図(`lib/postgraphile`が生成物の
格納先)に合わせるなら、`{{dir}}`相対ではなく絶対パス指定(先頭`/`)にする必要がある。現行値
`"../lib/postgraphile"`は先頭`/`が無いため相対パス扱いとなり、`graphql/Company/`から見た
`../lib/postgraphile`(実際には`graphql/lib/postgraphile`)という意図しない場所に出力される
設定になっていた(この点は現行build.yamlの単純な誤りとして、案A・案Bどちらを採る場合も修正が必要)。

## 対応方針

- 本件は[0003_risk_assessment.md](0003_risk_assessment.md)の判定基準に照らすと、DB構成変更では
  なく**ライブラリの仕様(ディレクトリ構成)自体の見直しが必要な項目**に該当する。
- 案A・案Bのどちらを採用するかはCLAUDE.mdの要件として別途追記・コミットすることを推奨する。
- 本ログの作成をもって要件0012の処置を停止する。**要件0013(モデル⇔Mapの往復変換テスト)は
  「0012が成功した場合のみ実行する」という前提条件を満たさないため、今回は実行しない。**

## 追記(要件0014適用後の再実行・2026/09/09)

要件0014により案A(スキーマ・問い合わせを`lib/`配下に統合)が採用され、`build.yaml`が
[0014_build_yaml_log.md](0014_build_yaml_log.md)のとおり修正された。この状態であらためて
`dart run build_runner build --delete-conflicting-outputs`を実行した。

```
  16s compiling builders/aot
W These options have been removed and were ignored: --delete-conflicting-outputs
  0s graphql_codegen on 3 inputs; lib/graphql/Company/company_edit.graphql
W graphql_codegen on lib/graphql/Company/company_edit.graphql:
  Missing scalar UUID. Defaulting to String
  2s graphql_codegen on 3 inputs: 1 output; spent 2s building; lib/graphql/Company/company_read.graphql
W graphql_codegen on lib/graphql/Company/company_read.graphql:
  Missing scalar UUID. Defaulting to String
W graphql_codegen on lib/graphql/Company/company_read.graphql:
  Missing scalar Datetime. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar UUID. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar Datetime. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar BigFloat. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar Date. Defaulting to String
  583s graphql_codegen on 3 inputs: 3 output; spent 571s building, 13s tracking
  Built with build_runner/aot in 605s; wrote 3 outputs.
```

**結果: 成功。** `lib/graphql/`配下の3つの入力ファイル(`company_edit.graphql`・
`company_read.graphql`・`schema.graphql`)それぞれに対応する`*.graphql.dart`が
`lib/postgraphile/`配下に生成された(所要時間 約10分。うち571秒がgraphql_codegen自体の処理)。

- `Missing scalar UUID/Datetime/BigFloat/Date. Defaulting to String`という警告が出ているが、
  これはPostgraphile独自のスカラー型をDartの`String`にフォールバックしているだけで、ビルド自体は
  失敗していない(エラーではなく警告)。[共通名前仕様](../CLAUDE.md#共通名前仕様)等でJSON
  (`Map<String,dynamic>`)へ変換する本ライブラリの方針とも矛盾しないため、現時点では対応不要と
  判断した。将来、日時計算など型付きの扱いが必要になった場合は`build.yaml`の`scalars`オプションで
  個別にマッピングを追加する(仕様変更ではなく低減処置の範囲)。
- 一方、`schema.graphql`自身から生成された`schema.graphql.dart`が約404MB(928万行)という
  巨大な出力になることを確認した。詳細と対応は[0014_build_yaml_log.md](0014_build_yaml_log.md)を
  参照(生成自体は避けられないため、生成物をgit管理から除外する運用とした)。
- 要件0012が成功したため、**要件0013(生成されたモデル⇔Mapの往復変換テスト)の前提条件を
  満たした。ただし0013の実行はチャットでの明示的な指示を受けてから行う。**

## 再実行(2026/09/09・チャット指示「0012を実行」)

再度`dart run build_runner build`を実行したところ、下記のとおり**初回は失敗**した。

```
E graphql_codegen on lib/graphql/Company/company_edit.graphql:
  Invalid GraphQL: Failed to find operation type for OperationType.mutation
E graphql_codegen on lib/graphql/Company/company_read.graphql:
  Invalid GraphQL: Failed to find operation type for OperationType.query
Failed to build with build_runner/aot in 1s; wrote 0 outputs.
```

### 原因

`build.yaml`・`lib/graphql/Company/*.graphql`(要件0011の命名規則ファイル)自体には問題がなかった。
原因は、要件0014でスキーマの実体を置くと定めた`lib/graphql/schema.graphql`が**ローカルの作業ツリーに
存在しなかった**こと。このファイルは要件0014により`.gitignore`登録済み(容量15MB超のため)で、
git管理下にないローカル生成物である。前回(0014適用直後)のビルドでは存在していたが、その後
(サイズが大きいため等の理由で)ローカルディスクから削除されたとみられ、`lib/postgraphile/`配下の
生成物(`company_edit.graphql.dart`・`company_read.graphql.dart`、schema由来の`schema.graphql.dart`)も
同様に消えていた状態だった(git管理下にある2ファイルは`git status`上「deleted」として検出)。

`schema.graphql`自体は移動前の場所である`source/schema.graphql`(15,077,637バイト、内容は
`lib/graphql/schema.graphql`が存在した当時と同一と推定されるサイズ)にはそのまま残っていた。
これはリポジトリルートの`.gitignore`(121行目)で`/flutter_app_lib/graphql_provider_lib/source/schema.graphql`
がすでに無視対象になっており、削除されずに残存していたためと考えられる。

### 対応

要件0012の指示にある「build.ymlに問題があるときは停止」には該当しない(build.yamlは正しい)ため、
処置を停止せず、要件0014で定めた配置(`lib/graphql/schema.graphql`)に合わせて
`source/schema.graphql`を`lib/graphql/schema.graphql`へコピーし、再実行した。

```
  0s graphql_codegen on 3 inputs; lib/graphql/Company/company_edit.graphql
W graphql_codegen on lib/graphql/Company/company_edit.graphql:
  Missing scalar UUID. Defaulting to String
  5s graphql_codegen on 3 inputs: 1 output; spent 5s building; lib/graphql/Company/company_read.graphql
W graphql_codegen on lib/graphql/Company/company_read.graphql:
  Missing scalar UUID. Defaulting to String
W graphql_codegen on lib/graphql/Company/company_read.graphql:
  Missing scalar Datetime. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar UUID. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar Datetime. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar BigFloat. Defaulting to String
W graphql_codegen on lib/graphql/schema.graphql:
  Missing scalar Date. Defaulting to String
  196s graphql_codegen on 3 inputs: 3 output; spent 191s building, 5s tracking
  Built with build_runner/aot in 198s; wrote 3 outputs.
```

**結果: 成功。** 所要時間は約3分23秒(前回は約10分)。生成された
`lib/postgraphile/Company/company_edit.graphql.dart`・`company_read.graphql.dart`は、
`git diff`で前回コミット済みの内容(改行コードの差異のみ)と一致することを確認した
(=モデル生成は再現性がある)。git管理外の`schema.graphql.dart`も同様に約404MBで再生成された。

### 残課題(運用上の注意点)

`lib/graphql/schema.graphql`は要件0014により意図的にgit管理外としているため、このリポジトリを
新しく取得した環境やクリーンアップ後の環境では**手動で配置しないとビルドできない**
(今回のように`Invalid GraphQL: Failed to find operation type`で失敗する)。
このこと自体は「低減処置(運用ドキュメント化)で対応可能」の範囲と考えられるが、恒常的な問題になる
場合は、`docs/06_cteate_test.sql`や`CLAUDE.md`にスキーマファイルの入手・配置手順を明記するなど、
仕様として運用ルールを追記することを推奨する。
