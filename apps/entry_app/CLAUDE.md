# entry_app

実績登録専用アプリ。バーコードリーダーデバイス(Android)・スマートフォン・タブレット・Windows で使う。`packages/features/barcode_entry` だけを載せ、`pms_app` のサイドバー・メニュー・ほかの機能は持たない。このプロジェクトの規則は `packages/features/CLAUDE.md` に従う。

1.  対象は Android と Windows(`flutter run -d windows` / Android 端末)。カメラ読み取りは Android・iOS だけ(Android は `CAMERA` 権限)。
2.  配線は `feature_shared` の `FeatureHost`(GoRouter・CommandBus・ハンドラ登録)。機能を足すときは `modules` と `entries` に足す。
3.  取得元(`scanGatewayProvider`)は暫定でメモリ上のサンプル。GraphQL 版の取得元と認証(PocketBase。`pageSessionMediatorProvider`)は導入後にここで差し込む。
4.  機能同士・アプリは `xxx_api.dart` の型だけを使う(`barcode_entry.dart` はアプリだけが読み込む)。
