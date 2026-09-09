# 0014_build.yaml修正ログ

対象: [docs/0012_build_runner_log.md](0012_build_runner_log.md)で提示した案A(スキーマ・問い合わせを
`lib/`配下に統合する)を採用し、`build.yaml`を修正する。あわせて、容量が大きい`schema.graphql`を
gitの除外リストに追加し、そこから生成されるモデルについても、不要であれば`build.yaml`から除外する。

## 実施内容

### 1. 案Aの採用(ファイル配置の変更)

| 旧 | 新 |
|---|---|
| `source/schema.graphql` | `lib/graphql/schema.graphql` |
| `graphql/Company/company_read.graphql` | `lib/graphql/Company/company_read.graphql` |
| `graphql/Company/company_edit.graphql` | `lib/graphql/Company/company_edit.graphql` |

プロジェクト直下の`graphql/`フォルダ(空になったため)は削除した。`source/`フォルダは
[画面仕様](../source/views.md)のみが残るため維持している。
[CLAUDE.md](../CLAUDE.md)の[構成](../CLAUDE.md#構成)・[このライブラリの仕様](../CLAUDE.md#このライブラリの仕様)
の該当箇所もあわせて更新した(旧記載は取り消し線で残し、新記載を追記)。

### 2. build.yamlの修正

```yaml
targets:
  $default:
    builders:
      graphql_codegen:
        options:
          assetsPath: "lib/graphql/**{.graphql,.gql,.graphqls}"
          outputDirectory: "/lib/postgraphile"
          clients:
            - graphql_flutter
```

[0012_build_runner_log.md](0012_build_runner_log.md)で特定した2つの問題に対応した。

- `sources: - postgraphile/**`によるソース制限を撤廃した。スキーマ・問い合わせを`lib/`配下に
  統合したことで、build_runnerの既定ソース(`lib/**`,`$package$`)だけで足りるため。
- 存在しないオプション`schemaPath`を削除し、`assetsPath`にスキーマ(`schema.graphql`)と
  問い合わせファイルの両方が一致するグロブを指定した(`graphql_codegen`はスキーマも問い合わせも
  同一グロブで読み込む設計のため)。

### 3. schema.graphqlをgitの除外リストに追加

`lib/graphql/schema.graphql`(15,077,637バイト / 466,214行)を[.gitignore](../.gitignore)に追加した。
このファイルはPostgraphileが都度生成する入力であり、リポジトリでの追跡は不要と判断した。
(注意: 移動前の`source/schema.graphql`は既にgit管理下にあったため、今回の移動により旧パスは
削除、新パス`lib/graphql/schema.graphql`はgitignore対象という状態になる。次回コミット時に
`git add`すると旧パスの削除のみが反映され、新パスは追跡されない。)

### 4. 生成モデル(schema.graphql.dart)の除外について

`dart run build_runner build`を実行して検証したところ、次の結果になった。

| 出力ファイル | サイズ | 行数 |
|---|---|---|
| `lib/postgraphile/Company/company_read.graphql.dart` | 170,166 bytes | 4,488 |
| `lib/postgraphile/Company/company_edit.graphql.dart` | 110,768 bytes | 2,746 |
| `lib/postgraphile/schema.graphql.dart` | **423,423,549 bytes(約404MB)** | **9,288,846** |

`schema.graphql`自身から生成される`schema.graphql.dart`が、実際に画面で使うクエリ/ミューテーション
の生成物(数百KB)に対して桁違いに巨大(約400MB、900万行超)であることを実測で確認した。
これはPostgraphileスキーマに定義された全型(全テーブル・全フィルタ入力型等)をそのままDartクラス化
したもので、アプリケーションのどこからも参照されない不要な生成物である。

**`build.yaml`の設定のみでこの出力を止めることは、インストール済みバージョン
(`graphql_codegen` 3.0.2)の実装上できないことを、パッケージのソースコードを確認して結論づけた。**
根拠は以下のとおり。

- `graphql_codegen`のビルダー(`lib/builder.dart`)は、`config.assetsPath`に一致する全ファイルを
  ひとつの`entries`集合(=型解決に使うスキーマ情報)として読み込み、かつ**同じ`assetsPath`から
  導出される`_assetsPrefix`を使って「どのファイルが自分自身の出力(`*.graphql.dart`)を生成するか」
  も決定している**(`buildExtensions`ゲッター)。つまり「型解決の対象に含めるが、自分自身の出力は
  生成しない」という指定を分離するオプションが存在しない。
- 出力を切り分けるための拡張子(`.graphql`/`.graphqls`/`.gql`)による除外も不可能。
  `buildExtensions`は`kGraphQLFileExtensions`(3種すべて)を常に対象にしており、
  `assetsPath`側の拡張子指定とは独立している。
- `scopes`オプション(複数スキーマ対応)も、対象ファイル集合の切り替えであり、
  「出力の有無」には影響しない。

このため、要件0014の「Type宣言が不要など必要がなければbuild.ymlから除外すること」は、
**build.yaml単体では実現不可**と判断した。代替の対応として、生成物`lib/postgraphile/schema.graphql.dart`
自体を[.gitignore](../.gitignore)に追加し、リポジトリに含めない運用とした(上記3.参照)。

## 残課題(継続監視)

- `schema.graphql.dart`はビルドのたびにローカルディスクに約400MB生成され、IDEの解析(dart
  analyze/エディタの型解析)やビルド時間にも影響しうる(今回のビルドはトータル約10分、うち
  571秒がgraphql_codegenの処理時間)。実運用上、これが許容できない場合は以下のいずれかの
  対応を別途検討する必要がある。
  - `graphql_codegen`を、スキーマと問い合わせの分離をサポートする別バージョン/別ツールに
    切り替える(仕様変更)。
  - 実際に使用する型のみを抜粋した縮小版スキーマを別途用意し、`assetsPath`をそちらに向ける
    (縮小版と実スキーマの同期運用が別途必要になる)。
  - 生成後に`lib/postgraphile/schema.graphql.dart`を自動削除するビルド後処理を追加する
    (未使用ファイルなので実行時には影響しないが、削除運用の手順化が必要)。
  - [0003_risk_assessment.md](0003_risk_assessment.md)の判定基準に照らすと、低減処置(運用ルール化)
    で当面は吸収できるが、恒常化する場合は仕様変更として扱うべき項目。

## 0012の再実行結果

本ログの修正を反映した状態で要件0012(build_runner実行)を再実行し、**成功した**
(詳細は[0012_build_runner_log.md](0012_build_runner_log.md)の追記を参照)。
