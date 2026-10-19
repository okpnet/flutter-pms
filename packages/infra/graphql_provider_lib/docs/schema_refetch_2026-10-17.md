# 全量スキーマの再取得(DB更新後、2026/10/17)

## 1. 取得(CLAUDE.md 4-1節)
- 接続先: `http://192.168.9.245:5000/graphql`(`192.168.1.100`は接続できず切り替え)。
- 経緯: 最初の3回は、PostGraphileがスキーマの再構築中で応答せず(5分でタイムアウト、または HTTP 500)、中止した。サーバーのログでイントロスペクションが約69秒かかっていたことを確認し、サーバーが応答するようになってから再実行して取得できた。
- 型: 取得16407 / 現行14256。追加2257、削除106、変更1802。`source/schema.full.graphql`を置き換えた(24,837,918 → 27,077,697バイト)。
- 主な変更: 出荷関連(`TransShipOrder` → `TransShippingOrder`、`TransShippingOrderDetail`)の名称変更、`InfoDepartmentKind`の削除キー(`DeleteInfoDepartmentKindByInfoDepartmentIdAndInfoDepartmentKindValueId`)、`TransInspectionReport`の主キー・外部キー(`trans_inspection_record`の外部キー制約に含まれていたため主キーを変更)、`TransPreventionDetail`の主キー名の誤字の修正(`Prevetion` → `Prevention`)。

## 2. 4-2節の実行結果
| 手順 | 結果 |
|---|---|
| view.yaml→GraphQLの生成 | 281ファイル、エラー0件 |
| 絞り込み | 成功(116ドキュメント、入力型384、198,451バイト) |
| 検索条件の対応表 | 34ファイル(多くの画面で更新) |
| build_runner | 117ファイルを出力(117秒) |
| 大きな生成物(4-4節) | 5000KB超は`schema.graphql.dart`(6.5MB)、`task_resource_page_edit`(6.9MB)・`task_resource_page_rfe`(6.2MB)。いずれも`.gitignore`・`analysis_options.yaml`・`.vscode/settings.json`に設定済み |
| テスト | `flutter test --no-pub`: 177件成功(回帰、page.mdとviewsの整合を含む) |

## 3. 備考
- view.yamlの修正は不要だった(生成エラー0件、整合テスト成功)。
- 今回の変更でGraphQLの生成物自体は変わっていない(検索条件の対応表と生成モデルの更新のみ)。
