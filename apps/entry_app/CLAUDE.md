# entry_app

実績登録専用アプリ。バーコードリーダーデバイス(Android)・スマートフォン・タブレット・Windows で使う。`packages/features/barcode_entry` だけを載せ、`pms_app` のサイドバー・メニュー・ほかの機能は持たない。このプロジェクトの規則は `packages/features/CLAUDE.md` に従う。

1.  対象は Android と Windows(`flutter run -d windows` / Android 端末)。カメラ読み取りは Android・iOS だけ(Android は `CAMERA` 権限)。
2.  配線は `feature_shared` の `FeatureHost`(GoRouter・CommandBus・ハンドラ登録)。機能を足すときは `modules` と `entries` に足す。
3.  取得元(`scanGatewayProvider`)は暫定でメモリ上のサンプル。GraphQL 版の取得元と認証(PocketBase。`pageSessionMediatorProvider`)は導入後にここで差し込む。
4.  機能同士・アプリは `xxx_api.dart` の型だけを使う(`barcode_entry.dart` はアプリだけが読み込む)。
5.  取得元は起動時の指定で選ぶ: `--dart-define=ENTRY_GRAPHQL_URL=http://.../graphql --dart-define=ENTRY_LANGUAGE_CODE_ID=<言語のid> --dart-define=ENTRY_STAFF_ID=<作業者のid>`。接続先と言語のどちらかが無ければ、メモリ上のサンプル。作業者のidは認証(PocketBase)の導入後にログインユーザーから与える。


## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。

## GraphQL にアクセスする前の確認
`--dart-define=ENTRY_MAINTENANCE_URL=http://サーバー:18480`(メンテナンス情報サーバーのルート)を指定すると、GraphQL へ通信する前にメンテナンス中かを確認し(`GuardLink`、`page_mediator_extension` の `GraphqlAccessGuard`)、中なら中断してメンテナンスのページへ向ける(`MaintenanceModule`)。セッション切れの確認とページは、認証(PocketBase)の導入時に足す。
