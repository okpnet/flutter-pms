# cost

原価(標準原価の一覧・在庫評価額の一覧・ロットの評価額)の実装(画面・ルート)。**読み取り専用**。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
モデルは `packages/model_providers/cost_model`(`CostItemUnitPage`・`CostItemValuationPage`・`CostVisiterValuationPage`)。

## 決定(2026-11-24)
1.  画面は 3 つ(いずれも台帳。金額の列は権限で隠さない): 標準原価の一覧(`costunit`。DB のビュー `v_item_unit_cost`)・在庫評価額の一覧(`costvaluation`。`v_item_valuation`)・ロットの評価額(`costlot`。`v_visiter_valuation`)。
1.  メニュー: 標準原価の一覧 = 「品目」のグループ(`item`)、在庫評価額の一覧・ロットの評価額 = 「作業実績」のグループ(`work_record`。「倉庫・在庫」のグループが無いため)。機能のグループは持たない。
1.  原価・評価額は DB のビューが計算した値で、Dart で計算しない(R1・R2)。社外の所有物・譲渡・仮止め・評価の対象は boolean の列のまま(チェック)で出す。
1.  実績の原価(作業実績・実際の仕入単価。支給品を 0 円にする規則など)は、標準原価の次の段階。**支給品に単価の列が無い場合は知らせる**(いまは標準原価で、支給品を区別しない)。
1.  未実装: 在庫評価額の末尾の合計・品目の行からそのロットの一覧へ進む操作・品目の台帳の行の操作「原価を見る」。

## 構成
| 場所 | 内容 |
|---|---|
| `lib/src/entities/` | 実体の定義(手書き。画面案に画面が無いため `gen.js` は上書きしない)・サンプル・表示名 |
| `lib/src/graphql/cost_repositories.dart` | GraphQL 版の取得元(読み取り専用。ビューの行 → 画面の行) |
| `lib/src/cost_module.dart` | `CostModule`(`EntityFeatureModule`。メニューを品目・作業実績のグループに分けて出す) |

## アプリへの組み込み(`pms_app`)
`featureModules` に `CostModule()`、`graphql_overrides.dart` に `costRepositories(client)`。アクセスパスは `/e/costunit`・`/e/costvaluation`・`/e/costlot`。機能コードは `V`。

## テスト
`test/cost_test.dart`(実体・メニュー)・`test/cost_repositories_test.dart`(仮の通路)・`test/cost_server_test.dart`(検証用サーバー。読み取りだけ。標準原価 = 購入品 + 生産コスト + 部品、現在庫 = 評価の対象 + 社外、評価しないロットは評価額 0)・`example/test/widget_test.dart`。

## 規則/仕様
`packages/features/CLAUDE.md` の[規則/仕様]を適用する。多言語は slang(`lib/src/i18n`。クラス `CostStrings`)。
