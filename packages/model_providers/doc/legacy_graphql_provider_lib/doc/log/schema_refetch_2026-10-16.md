# 全量スキーマの再取得(DB更新後、2026/10/16)

## 1. 取得(CLAUDE.md 4-1節)
- 接続先: `http://192.168.9.245:5000/graphql`(`192.168.1.100`は接続できず切り替え)。
- 型: 取得14256 / 現行14128。追加160、削除32、変更1097。`source/schema.full.graphql`を置き換えた(24,548,239 → 24,837,918バイト)。
- 主な変更: 品目工程(`MstrItemOperation`、`HistoryMstrItemOperation`)の追加。`MstrDocument`系の入力型の削除・変更(文書のFK)。テキスト関連テーブルの列追加に伴う`Create*Payload`等の変更。

## 2. 4-2節の実行結果
| 手順 | 結果 |
|---|---|
| view.yaml→GraphQLの生成 | 93ファイル、エラー6件(すべて既知の「内向きの1対1の入れ子更新が未対応」: `TaskPageEdit.parent`、`LocationPageEdit.parent`、`ItemPageEdit.parent`・`descendants`、`DepartmentPageEdit.parent`・`kinds`)。更新前は91ファイル・エラー7件 |
| 絞り込み | 成功(入力型256、126,636バイト) |
| 検索条件の対応表 | 19ファイル。変更は`company_page`・`department_page`・`office_page`の3ファイル |
| build_runner | 58ファイルを出力。5000KB超の生成物なし |
| テスト | `flutter test --no-pub`: 158件成功。回帰テスト(`view_graphql_generator_test`)も既存画面と一致 |

## 3. 備考
- 今回のDB変更では、`lib/graphql`が参照する型・列の削除は無く、view.yamlの修正は不要だった。
- 新しいテーブル(品目工程)を使う画面は、view.yamlに未定義。画面を追加するときに、page.mdとview.yamlを更新する。
- `source/generated_graphql/`に生成した画面のうち、`lib/graphql`に未採用のものは、これまでどおり採用の判断待ち。
