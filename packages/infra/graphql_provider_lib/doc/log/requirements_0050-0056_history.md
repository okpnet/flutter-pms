# 要件0050〜0056 の原文と経緯

CLAUDE.mdの「要件(0050以降)」を、2026/10/17に整理(各要件の規則を本文の章へ統合し、要約に置き換え)した際に、原文をここへ移した。
現在有効な規則は、CLAUDE.mdの本文を参照する。要件の通し番号は、本文中の`(0050)`のような番号と対応する。

---

2026/10/07_0050:view.yamlのトップノードの命名規則、ページを子として流用するときの引き継ぎ規則、および平坦なMapによる検索条件を定める。

1. 用語
    1. ページ: 編集・閲覧を問わず、GoRouterの遷移先1つあたりの単位。
    2. 共通定義: 単体では生成せず、他のノードの子としてだけ使うノード(区分・種類等の列の一部になる参照、呼称・住所・更新者等)。
2. トップノードの命名
    1. 次の4つの接尾辞のいずれかを付ける。kindは接尾辞と一致しなければならない。

        | 接尾辞 | 用途 | kind |
        |---|---|---|
        | ~Page | ページの読み込み | read |
        | ~PageEdit | ページの編集 | edit |
        | ~ReadFields | 共通定義の読み込み | read |
        | ~EditFields | 共通定義の編集 | edit |

    2. ページとして編集するものは、~EditFieldsではなく~PageEditとする。
    3. 同じテーブルについて、共通定義とページの両方を定義してよい(例: UnitReadFieldsとUnitPage)。
    4. トップノード名は先頭大文字(PascalCase)とし、アンカー名はトップノード名と同じにする。
    5. 接尾辞が無い、またはkindが一致しないノードはエラーとしてログに記録し、生成しない(5-7節)。
3. 生成対象と出力先(5-3節を置き換える)
    1. 生成対象は~Pageと~PageEditだけとする。~ReadFieldsと~EditFieldsは生成しない。
    2. ~EditFieldsにはgenerateRfeを付けない(単体のRFEも作らない)。
    3. ディレクトリ名
        1. ~Pageと~PageEditは、snake(~Page)の同じディレクトリに置く。
        2. 対応する~Pageが無い~PageEditは、末尾の「Edit」を除いた名前をスネークケースにしたディレクトリに置く。
    4. ファイル名は<ディレクトリ名>_read.graphql、_edit.graphql、_rfe.graphqlとし、操作名はPascalCase(<ディレクトリ名>)+Read/Edit/Rfeとする。
    5. 平坦化キーの定数は、lib/contents/<ディレクトリ名>_keyname.dartに置く。
4. 共有
    1. 1つのeditを複数の~PageEditで共有する場合は、本体を~EditFieldsとし、各~PageEditから<<で取り込む。generateRfeとrequiredWhereは、各~PageEdit側に書く。
    2. readを複数の~Pageで共有する場合も同様に、本体を~ReadFieldsとする。
5. 子として流用するときの引き継ぎ
    1. ~Page・~PageEdit・~ReadFields・~EditFieldsを子として<<で取り込むと、where・requiredWhere・defaultWhere・filter・paginationを引き継ぐ。
    2. 子の側で同じキーを書くと、引き継いだ値はキー単位で丸ごと置き換わる(YAMLのマージ)。引き継ぎの例外は、この方法で指定する。
    3. 引数名は0043(27章3-1節)に従う。
        1. 同じ名前で同じ型の引数は、1つの変数として親と子で共有する。これを、親の条件を列単位で子へ伝える手段とする。
        2. 型が違う場合、または親と子で別の値を渡す場合は、{column, as}で引数名を分ける。分けずに重複した場合は、生成時にエラーとする。
    4. paginationは、現行どおり「$<子の出力名>First」「$<子の出力名>Offset」とする。この変数名は、27章3-1節の「自動で接頭辞を付けない」の例外とする。
    5. editのツリー内(RFEを含む)でreadを参照する子は、引き継いだ言語の条件を、5-5節のedit・RFEの言語引数に読み替える。
6. 検索条件(filter)
    1. view.yamlの`condition`キーを`filter`キーに改める。`filter: true`は「ページが検索条件を受け取る」ことを示す。GraphQLでは、トップの操作にNull許容の「$filter: <テーブル>Filter」(postgraphile-plugin-connection-filter)を生成する。PostGraphile標準のcondition引数は使わない。
    2. defaultWhere(remove等)の固定条件は、$filterとandで結合する。
    3. 子として流用したページのfilterは、子に独立した変数を作らず、親の$filterの中に関連の経路として展開する。
        1. toFirstOneの子は、前方の関連フィールド(例: infoAddressByInfoAddressId)で辿る。
        2. toManyの子は、someで辿る(子のいずれかが一致する親を取得する)。
    4. 呼び出し側は、検索条件を平坦なMap(キーは平坦化キーの定数、値はconnection-filterの演算子のMap。例: {includes: "東京"})で渡す。ライブラリは、view.yamlの経路(as・using・from)に従い、入れ子の<テーブル>Filterへ展開する。
        1. 平坦化キーから関連フィールドの経路への対応は生成時に作り、KeyNameの定数(ContentVariable)に持たせる。
        2. 展開できないキーはエラーとする。
    5. 呼称(shared_appellations)を経由する列の条件には、5-5節の言語の条件を同じ経路の中に加える。
    6. edit・RFEでは、引き継いだfilterを無視する。
    7. 子の行だけを絞り込み、親の行を絞り込まない検索は、本要件の対象外とする。
7. 移行
    1. 既存ノードの変更前・変更後の対応表と、影響する生成物を、doc/log/0050のログにまとめてから着手する。
    2. 生成物(ディレクトリ・操作名・生成クラス・KeyName)が変わるもの
        1. DepartmentCategoryPage(ディレクトリ department_category → department_category_page)
        2. DepartmentCategoryEdit → DepartmentCategoryPageEdit(同上)
        3. StaffCapabilityEdit → StaffCapabilityEditFields。StaffCapabilityPageEditとCapableStaffPageEditを新設し、それぞれから取り込む。staff_capability/は廃止する。
        4. condition: trueを持つすべてのread: view.yamlのキーをfilter: trueに改め、GraphQLの$condition(<テーブル>Condition)を$filter(<テーブル>Filter)へ変える。
    3. 名前だけが変わるもの(生成物は変わらない)
        - dictionaryLabel → DictionaryLabelReadFields
        - dictionaryEdit → DictionaryEditFields
        - appellationLabels → AppellationLabelsReadFields
        - appellationLabelsEdit → AppellationLabelsEditFields
        - addressFields → AddressReadFields
        - addressEditFields → AddressEditFields
        - languageCodeEdit → LanguageCodeEditFields
        - updateStaff → UpdateStaffReadFields
        - Unit → UnitReadFields
        - ItemKind → ItemKindReadFields
        - ItemRead → ItemReadFields
        - ApprovalRead → ApprovalReadFields
        - ApprovalEdit → ApprovalEditFields
        - ApprovalDetailRead → ApprovalDetailReadFields
        - ApprovalDetailEdit → ApprovalDetailEditFields
        - StaffLicenseEdit → StaffLicenseEditFields
        - SpecMeasurementEdit → SpecMeasurementPageEdit(生成物はすでにspec_measurement_page/SpecMeasurementPageEditのため変わらない)
    4. 手順は「view.yamlの修正 → 評価 → GraphQLの生成 → 絞り込み → build_runner → テストの見直し」の順とし、生成クラス名・引数の変更は、利用側のアプリへの影響としてログに記録する。
8. 反映先
    1. CLAUDE.mdの5-3節を、本要件の2・3で置き換える。
    2. 27_yaml_to_graphql_conversion_rules.mdの3-1節・5章(conditionをfilterに改める)・6-7節に、5・6の内容を反映する。
    3. schema.jsonで、トップノードの接尾辞とkindの一致を検査する(patternProperties、if/then)。conditionプロパティをfilterに改め、説明を6-1に合わせる。
    4. prune_schema.dartの規則に、関連フィルタの入力型(<テーブル>Filterの関連フィールド、some/every/none)を残す設定を加える(4-2節)。
    5. 平坦なMapから<テーブル>Filterへ展開するコンバーターを、lib/extensions/に追加する。往復変換のテストと同様に、画面ごとのテストを作る。
9. 前提
    1. PostGraphileで、postgraphile-plugin-connection-filterの関連フィルタ(connectionFilterRelations: true)が有効になっていること。有効化と全量スキーマの再取得(4-1節)は別途行う。
10. 対象外
    1. 言語の引数の一般化(ISO 639-1準拠、言語の数を限定しない、ja/enの固定の廃止)と、5-5節の見直しは、別の要件とする。

2026/10/14_0051:view.yamlからGraphQLを生成するツールを定める。

1. 目的: view.yaml→GraphQLの変換を、Claudeによる毎回の作成から、build_runnerで実行できるツールに置き換える。
2. 構成: `tool/view_graphql`(純Dartのライブラリ)を、build_runnerのBuilder(`build.yaml`)とCLI(`tool/gen_view_graphql.dart`)の両方から使う。
3. 入力: `source/view.yaml`(要件0052で`source/views/`に分割)と`source/schema.full.graphql`。出力: `source/generated_graphql/<ディレクトリ>/<ディレクトリ>_{read,edit,rfe}.graphql`。
4. 規則: 27章(11章)に従う。既存の生成物から読み取った慣習(呼称・辞書の別名なし、単数の関連は主キーを必ず含める、引数名の接頭辞など)をツールに実装した。
5. 検証: 既存の`lib/graphql`と、書式・コメント・選択の順序を除いて比較する。2026/10/14時点で54ファイル中36ファイルが一致し、残りの差分はview.yaml側(または古い既存ファイル)の原因による(docsのログ)。
6. 既存の`lib/graphql`は、view.yamlとの差分の扱い(どちらを正とするか)を決めてから、生成物で置き換える。`operation_page`は置き換え済み。
7. 未対応: 内向きの1対1を入れ子で更新する子(`DepartmentPageEdit.parent`・`kinds`)。エラーとして記録する。
8. view.yamlの誤字(AppellationLabels系の`pronunciatione`・`npronunciatione`・`nicknam`)を修正した。ほかの不具合はログ5章に列挙した。
2026/10/15_0052:view.yamlを機能単位のファイルに分割する。

1. 目的: view.yamlが約3,700行に肥大化し、レビューが困難になったため、機能単位のファイルに分ける。
2. 配置: `source/views/`を作成し、view.yamlの分割はこのDIR以下に展開する。元の`source/view.yaml`は廃止する。
3. 分割の基準: `source/page.md`をもとに分割する(分野・機能に沿った`<分野>/<機能>.yaml`)。
4. 共通参照項目: 機能に該当するもの(例えば`TaskReadFields`)は機能のファイルに含める。複数の機能から使うものは`common/`に置く。
5. ファイルをまたぐ共通項目の参照(アンカーとエイリアス)は、読み込み側(`tool/view_graphql/view_sources.dart`)が全ファイルを依存順に結合してから解析することで解決する。
6. 進め方: ローダーの複数ファイル対応(結合・依存順・重複検出・位置の対応表) → 機能単位への切り出し(内容は変更しない) → 分割前後の一致の確認(読み込み結果・GraphQLの生成物・回帰テスト) → 元のview.yamlの廃止。
7. 要件0051の成果物`doc/log/view_graphql_generator_2026-10-14.md`を、本ファイルの構成(3章)と5-8節から参照する。
8. 詳細と確認結果: `doc/log/0052_view_yaml_split_log.md`。

2026/10/15_0053:view.yamlにデフォルトのソート、ASC/DESCがあるか確認する。もし、ソートが存在しなければdefaultSort属性を追加。値はasc,desc,none(標準)。noneの場合は省略可能。GraphQLにソートの引数がない場合は、追加。ソートの引数があるとき、defaultSortを無効にする。引数がNullのときはソートを設定しない。これらはbuildrunnerへの適用し、view.yamlを再評価、ビルドする。
0053の実施:
1. view.yamlには並び順の指定が無かった(トップは生成ツールが固定で`PRIMARY_KEY_ASC`、1対多は`sequence`があれば固定で`SEQUENCE_ASC`)。`schema.json`に`defaultSort`を追加し、`tool/view_graphql/read_generator.dart`を変更した。
2. 従来のトップの固定の`PRIMARY_KEY_ASC`は廃止し、`none`(並べない。PostGraphileは主キー順)を標準とした(ユーザー採択)。順(`sequence`)で並べる`OperationPageEdit.operationTasks`だけ、`defaultSort: { asc: { sortColumns: [sequence] } }`を指定した。
3. 1対多に並び順の引数を追加したため、該当するクエリ・RFEの変数が増える(利用側への影響): `$<子の出力名>OrderBy`。詳細は`doc/log/0053_default_sort_log.md`。
4. ソートの列は、`defaultSort`の入れ子の`sortColumns`(列名の配列)で指定する。`asc`/`desc`をキーにし、その下に`sortColumns`を置く(YAMLでは`defaultSort: asc`の下に子を置けないため)。例:
    ```yaml
    defaultSort:
      asc:
        sortColumns:
          - 列名1
          - 列名2
    ```
    - ascとdescは同時に指定できない(両方書くとエラー)。省略・`none`は並べない。
    - `sortColumns`がnull・空・省略(`asc:`だけ等)のときはnoneと同義。
    - 列名はこのノードの列(snake_case、主キーは`primary_key`)。関連先の列は、PostGraphileの`orderBy`に無いため指定できず、エラーとする。
    - `defaultSort: asc`のような文字列(旧形式)や、`defaultSort`と同じ階層の`sortColumns`はエラーとする。
5. `source/schema.json.help.md`に、defaultSort / sortColumns の節を追加した。
2026/10/16_0054:ツリーの親の付け替え(ドラッグ&ドロップ)を、ツリー行の直接更新で実現する。

1. 背景: 「内向きの入れ子」のエラー(`LocationPageEdit.parent`等)の原因は、ツリー表(`mstr_location_tree`等)の`<親テーブルのID>`列にユニーク制約が無く、PostGraphileが1対多(`mstrLocationTreesToMstrLocationIdUsingMstrLocationId`)として扱うため、ジェネレーターが組み立てる1対1の名前(`mstrLocationTreeToMstrLocationId`)と合わないことだった。
2. 方針(案A、ユーザー採択): 親の付け替えは、ツリー行を直接更新するページで行う。`updateMstr…TreeByMstr…TreeId(input: {…TreeId, …TreePatch: {parent…Id}})`。
3. 追加: `LocationTreePageEdit`・`ItemTreePageEdit`・`TaskTreePageEdit`・`DepartmentTreePageEdit`(それぞれ`<dir>_tree_page`)。`requiredWhere`はツリー行のID、`generateRfe: true`。`ItemTreePageEdit`は、旧`ItemPageEdit.parent`の列(呼称・数量・テキスト)を引き継いだ。
4. 削除: `LocationPageEdit`・`ItemPageEdit`・`TaskPageEdit`・`DepartmentPageEdit`の`parent`(ReadのPageの`parent`は残す。ツリー行のIDを得るため)。
5. 親をトップ(null)へ移動する: Variablesモデルのコンストラクタはnullを渡すとキーを省略する(親を変更しない)ため、`Variables$Mutation$…Edit.fromJson({'<tree>Id': …, 'parent…Id': null})`でnullのキーを渡す。
6. 利用側の注意: 自分の子孫の下への移動(循環)は、アプリ側で`v_*_descendants`を使って防ぐ。DB側の制約は無い。ツリー表の`symbol`のユニーク制約(`*_tree_IX1`)にも注意する。
7. 残りの内向きの入れ子(別原因)も、同じ方針で編集から外した: `DepartmentPageEdit.kinds`(区分は`info_department_kind`の1対1の内向き。値の編集は`DepartmentCategoryPageEdit`、取得は`DepartmentPage`)、`ItemPageEdit.descendants`(読み取り専用のビュー。取得は`ItemPage`)。これでGraphQLの生成エラーは0件になった。
8. 詳細: `doc/log/0054_tree_parent_update_log.md`。

2026/10/16_0055:`page.md`と`views`、`shema.graphql`と関連を学習、傾向から`page.md`と`views`の追加、レビューを行い評価する。

0055の実施(2026/10/16):
1. 4章を実行(スキーマ再取得 → 生成 → 絞り込み → 対応表 → build_runner → テスト)。部署と区分の構造変更(`info_department_kind`が紐付けの1対多)に`department.yaml`とテストを追従した。
2. viewsを評価し、スキーマとの不整合を修正した(`document.yaml`、`FlexibleTextEditFields`、`HsCodeReadEditFields`、`InspectionFormulaEditFields`、`ContactReadFields`/`ContactEditFields`、顧客・サプライヤーの`defaultWhere`の誤記)。
3. page.mdの項目のうち、スキーマに対応するテーブルがあるもの(約50ページ)を、`tool/scaffold_view.dart`の雛形からviewsへ追加した。page.mdの誤記・矛盾・未参照を修正し、定義(「項目」、`[ノード名]`、`取込:`、`<!--DB要-->`、命名の対応)を追記した。
4. 生成ツールを拡張した: `defaultWhere`の固定条件(remove以外)の反映、共通定義(~ReadFields/~EditFields)の検証。
5. 完了条件を満たした(page.mdの項目が矛盾なく埋まり、全量スキーマとの不整合0件。`test/page_views_consistency_test.dart`)。DBの変更・要件の確定が必要な項目はスキップし、`doc/log/0055_page_views_review_log.md`の3・4章に残した。

2026/10/17_0056:`_tree`で終わるテーブル、または`hrchy_`か`history_`で始まるテーブルを除き、親子関係にあるテーブル(ペア)の子のレコード数を定義した。