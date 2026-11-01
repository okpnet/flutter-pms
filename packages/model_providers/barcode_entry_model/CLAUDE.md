# barcode_entry_model

`packages/features/barcode_entry`(バーコード実績登録)の GraphQL モデル。ワークスペースの方針は [../CLAUDE.md](../CLAUDE.md) と [../../../CLAUDE.md](../../../CLAUDE.md) を参照。

1.  `gql/scan.yaml`: symbol で対象を引く読み込み(`Scan~Page`、`lightRead: true`)。作業指示(`trans_work_plan`)・作業実績・棚(`trans_container`)・棚のビジター・発注明細・受入実績・品目・設備。
2.  登録は `work_record_model`・`purchasing_model` の `~PageCreate` を使う(このパッケージは両方に依存する)。重複して持たない。
3.  `lib/scan_client.dart`(`ScanClient`): 窓口。生成モデルを隠し、平らな型(`ScanFound`・`ScanInspection`・`ScanVisiter`)で返す。登録は1テーブルずつの部品と、組み合わせ(`startWork`・`putWork`・`putPurchase`・`putItem`・`registerComplaint`)。設備点検(`findPendingInspection`・`createInspectRecord`)と取り出し可否(`listVisiters`)も持つ。担当者・場所の履歴IDは、登録前に最新を読んで送る。クライアントで順に呼ぶ。`lib/barcode_entry_model.dart` は生成物のバレル(`gen_barrel`)のため、窓口は別のファイルに置く。
4.  機能(`barcode_entry`)は `scan_client.dart` だけを使い、生成された型を読み込まない。
5.  テスト: `test/scan_client_test.dart`(検証用サーバーでの照会、代役の通信路での登録の順序と値)。
