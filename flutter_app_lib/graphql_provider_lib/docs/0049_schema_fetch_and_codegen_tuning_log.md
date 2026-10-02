# 要件0049 schema.graphqlの再取得(0026)・コード生成(0024) ログ

- 実施日: 2026/10/02
- 結果:
  - schema.graphqlの取得・比較・置き換え: 完了
  - 0024(schema.graphql.dartの再生成): 当初はメモリ不足で未完了(4章)。調査のうえ、生成用スキーマを絞り込む方式に変更して完了(5章)

## 1. 接続と取得

- `http://192.168.1.100:5000/graphql`: 接続不可(curl `HTTP 000`、タイムアウト)。
- 要件0049に従い、`http://192.168.9.245:5000/graphql`へ接続先を変更した(`HTTP 405` = 稼働中)。
- この環境にはNode.js(従来の`get-graphql-schema`・`@graphql-inspector/cli`)が無い。DockerもWSLのディストリビューションも無い。
  そのため、取得・比較を次の方法に変更した。
  1. 標準のイントロスペクションクエリをcurlでPOSTした(応答42MB)。
  2. Dartのスクリプト(作業用、リポジトリ外)でSDLへ変換し、`package:gql`で構文を検証した。
  3. 現行のschema.graphqlと型単位で比較した。説明文を除き、フィールド・引数・型を名前順に正規化して比較している。
- 書式(型の並び順・説明文の書き方)は`get-graphql-schema`の出力と異なる。内容(型・フィールド・引数・既定値)は同等である。

## 2. 差分

型数は12,083から12,161になった。内訳は、追加78、削除0、変更181(いずれもフィールドの追加のみ)。

ERのビューに付与したPostGraphile用のコメント(コミット096f2c9「ERのViewにPostgrapileが解釈できるコメントを追加する」)により、
各`v_*_descendants`ビューと親テーブルの間の関連が生成された。

| 型 | 追加フィールド |
|---|---|
| InfoDepartment | `vDepartmentDescendantByAncestorInfoDepartmentId`(単数)、`vDepartmentDescendantsByAncestorInfoDepartmentId`(Connection) |
| MstrItem / MstrDocument / MstrDocumentContent / MstrLocation / MstrTask / TransContainer | 同様に各`v*Descendant(s)By...`(単数・Connection) |
| VDepartmentDescendant等 | 親への逆参照(`infoDepartmentByAncestorInfoDepartmentId`等) |
| Query | 各ビューの単数取得(`vDepartmentDescendantByAncestorInfoDepartmentId`等) |
| 各Patch/Input | 入れ子書き込み用の`FakeTests...ForeignKey0...`入力型(追加78型の大半) |

既存の生成済みGraphQLが使っている型・フィールドの削除・変更は無い。

0048で保留とした`DepartmentPage.descendants`は、スキーマ上は`InfoDepartment.vDepartmentDescendantByAncestorInfoDepartmentId`として
入れ子で取得できるようになった。0047ログ6章の1の対応案が実スキーマに反映された状態である。
view.yamlの`using`・GraphQLへの反映は、別途指示があれば行う。

`lib/graphql/schema.graphql`は取得したSDLへ置き換えた(置き換え前のファイルは作業用フォルダに保存)。

## 3. schema.graphqlのgit管理

`.gitignore`には要件0014から`lib/graphql/schema.graphql`が記載されていた。しかし、記載前に一度コミットされていたため、gitの追跡対象のままになっていた。
ユーザーの指示(引き続きgit対象外)により、`git rm --cached`で追跡を外した(ファイル自体は残る)。

## 4. 0024(schema.graphql.dartの再生成)が完了しない件

### 4-1. 1回目(上限25分)

`dart run build_runner build --build-filter=lib/postgraphile/schema.graphql.dart`の経過は次のとおり。
- build_runnerのプロセスがメモリを6.4GB以上使い、PC全体が逼迫した(シェルの子プロセス起動が失敗、Win32エラー299)。
- 25分の上限で停止し、出力は書き込まれなかった。
- その後、VS Codeがクラッシュした(ユーザー報告)。

### 4-2. 原因の調査

- schema.graphql.dart(前回生成分、563MB・1,234万行)の大半は、10,498個の入力型のクラスである。うち約31%(388万行)がcopyWith系クラス。
  入力型の大半は、postgraphile-plugin-nested-mutationsが生成する入れ子書き込み用の型。
- graphql_codegen 3.0.2は、生成したコード全体を`DartFormatter`で一括整形してから書き込む(`builder.dart` `_writeProgram`)。
  数百MBのソースを一括で構文解析・整形するため、メモリ使用量が非常に大きい。この整形は設定で無効にできない。
- build_runner 2.12には、メモリを抑えるオプション(旧`--low-resources-mode`等)が無い。
- PCの状態: 物理メモリ16GB、利用可能メモリは約2GB。VS CodeのDart解析サーバーが約3.9GBを使用していた。
  画面モデルが巨大なschema.graphql.dartをimportしているため、解析対象から除外していても読み込まれる。

### 4-3. 2回目(調整して再実行)

調整内容:
- `build.yaml`に`disableCopyWithGeneration: true`を設定し、出力の約3割を削減した。copyWithはライブラリ・テストのどこからも使われていない。
- 旧schema.graphql.dartを一時退避した。解析サーバーのメモリが解放され、利用可能メモリは約3.9GBまで回復した。
- 利用可能メモリが600MB未満の状態が30秒続いたらビルドを止めるメモリ監視を付けた。

結果: 開始40秒で利用可能メモリが3.9GBから40MBまで低下し、監視によりビルドを停止した。VS Codeのクラッシュは回避できた。
**copyWithの削減だけでは足りず、build_runner/graphql_codegenの設定による調整では解決できない**と判断した。

### 4-4. 現在の状態

- `lib/postgraphile/schema.graphql.dart`: 退避していた旧版(2026/09/29生成)を元に戻した。
  新しいschema.graphqlとの差分は追加のみで、既存の画面モデルが参照する型は変わっていない。そのため、現行の画面・テストはそのまま動作する。
  ただし、新しく追加された型・フィールド(ビューの関連等)は生成モデルに含まれない。
- `build.yaml`: 変更を取り消した(copyWith生成は従来どおり)。
- `lib/graphql/schema.graphql`: 新しいSDLに置き換え済み(git対象外)。

### 4-5. 対応案(ユーザー判断)

| 案 | 内容 | 長所 | 短所 |
|---|---|---|---|
| A | 監視を外し、Windowsのページングに任せて長時間実行する(9/30は315秒で成功した実績あり) | 変更が無い | VS Codeが再びクラッシュする恐れがある。実行中はVS Codeを含む他のアプリを閉じるのが望ましい(Claude CodeもVS Code上で動いているため、その場合は別の端末から実行する必要がある) |
| B | コード生成専用に「画面のGraphQLが使う型だけに絞り込んだスキーマ」を作り、それをgraphql_codegenへ渡す(全量のschema.graphqlは参照用に残す) | 入力型が数十〜数百個に減り、生成物・メモリとも大幅に縮小する | 絞り込み処理(ツール)の追加が必要。要件0014の構成(schema.graphqlをそのまま入力にする)の変更になる |
| C | graphql_codegenをフォークし、schema.graphql.dartだけ整形を省略する(dependency_overridesで差し替え) | 生成内容は変わらない | 外部パッケージの改変を保守する必要がある |
| D | メモリに余裕のある別のPC(またはNode・Dockerがある環境)で0024を実行する | 現行の構成のまま | 環境の用意が必要 |

## 5. 対応(2026/10/02、チャットでの指示: 4-5の案Bで進める)

### 5-1. 事前の指示

- 要件0014を無効にした。全量のschema.graphqlをそのままgraphql_codegenの入力にする構成を廃止した。全量スキーマをgit対象外とする点は維持する。
- CLAUDE.mdを、要件0001〜0049を統合した要件定義に再構成した。
  要件の原文は`docs/requirements_0001-0049_history.md`へ切り出し(0014には無効の印を付けた)、CLAUDE.mdからは削除した。

### 5-2. 調査(大きいスキーマを持つFlutter/Dartでのモデル生成)

| パターン | 事例 | 判断 |
|---|---|---|
| 使う型だけを生成する | GraphQL Codegen(JS)v6が2026/04に採用 | 採用(Dart側に該当機能が無いため、スキーマの絞り込みで実現) |
| ビルドの並列数を下げる(`BUILD_MAX_WORKERS_PER_TASK`) | dart-lang/build #3281 | 不採用(巨大な1ファイルの生成には効かない) |
| 生成物の分割 | 同上 | 不採用(graphql_codegenはスキーマの出力を分割できない) |
| 生成器の変更(ferry等) | gql-dart/ferry #560でメモリ不足の事例 | 不採用 |
| サーバー側でスキーマを縮小 | nested-mutationsプラグインの設定 | 不採用(テーブル単位で入れ子書き込みを止める設定が無い) |

実測では、型単位で辿るだけだと入力型の79%(8,381/10,580)が残った。どのUpdate入力も、Patchから全テーブルの入れ子書き込み型を参照するためである。
そこで、入力型のフィールド単位まで絞り込む方式とした。

### 5-3. 実装

| 追加・変更 | 内容 |
|---|---|
| `tool/prune_schema.dart`(新規) | `source/schema.full.graphql`と`lib/graphql/**`の画面のGraphQLから、使う型・フィールド・引数だけを残した生成用スキーマ`lib/graphql/schema.graphql`を書き出す(規則はファイル冒頭とCLAUDE.md 4-2節)。`@deprecated`は引き継ぐ |
| `tool/fetch_schema.dart`(新規) | 0026・0049の取得・比較・置き換えをDartで行う(接続先の切り替えを含む)。動作確認: 192.168.9.245から取得し、差分なし |
| 全量スキーマ | `lib/graphql/schema.graphql` → `source/schema.full.graphql`へ移動(`.gitignore`へ追加) |
| `.gitignore` | `source/schema.full.graphql`を追加。`lib/graphql/schema.graphql`(生成用)も引き続き対象外 |
| `test/support/rfe_edit_conversion.dart` | コメントのみ(テストは生成用スキーマを使う) |
| `build.yaml` | 変更なし(4-3の`disableCopyWithGeneration`は不要になったため取り消したまま) |

### 5-4. 結果

| 項目 | 全量スキーマ | 生成用スキーマ |
|---|---|---|
| オブジェクト型 | 1,346 | 64 |
| 入力型 | 10,580 | 204 |
| Enum | 227 | 14 |
| スキーマの大きさ | 約20MB | 約70KB |
| schema.graphql.dart | 563MB(生成不可) | **2.0MB(3秒で生成)** |
| 全モデルの生成(53ファイル) | — | 16秒 |
| 全テスト(74件) | 8〜18分 | **34秒**、すべて成功 |

- 画面の生成モデル(52ファイル)は、再生成前と内容が同一だった(改行コードの差のみ)。
- `dart analyze lib test tool`: 生成物以外のerror・warningは0件。
- 0049で追加された型(ビューの関連等)は、画面のGraphQLで使われるまで生成モデルに現れない。`DepartmentPage.descendants`を反映すると、自動で含まれる。
