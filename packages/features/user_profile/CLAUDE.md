# user_profile

ログインユーザーの顔写真(ユーザー情報の表示)と、自分のイメージの変更。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
表示の部品(`UserContainer`・`AppUser.photo`)は `packages/ui/app_shell` が持つ。このプロジェクトは、画像の取得・変更・既定のイメージ・変更可否の設定と、「自分のイメージ」の画面を持つ。画像は PocketBase の `user_avatars`(`packages/infra/pbapi` の `AvatarService`。サーバーの仕様は `tools/docker/pocketbase/README.md` の「9. ユーザーアバター」)。

## 仕様
1.  デザインは画面案(`tools/open-design/index.html`・`app.js` の設定画面の「自分のイメージ」)に合わせる。現在の画像・名前・役割のプレビュー、画像ファイルを選ぶ(PNG・JPEG・GIF・WebP、2MBまで)、「初期のイメージに戻す」。
1.  画像が登録されていない・取得できないときは、既定のイメージ(画面案の `avatar.svg`)を使う。`DefaultAvatar` が `viewBox="0 0 120 120"` の図形を `dart:ui` で描いて PNG にする(SVG の描画ライブラリは使わない)。
1.  標準では、ユーザーは自分のイメージを変更できない(変更できるのはユーザーを追加できる管理者)。起動時のプロパティ `isChangeUserImage`(`--dart-define=IS_CHANGE_USER_IMAGE=true`)で、ユーザーも変更できるようになる。アプリケーションの裏設定(`backstage`)の値は `feature_shared` の `backstageValuesProvider` から読む(優先順位は、起動時の値 > 裏設定の値 > 標準の `false`)。
1.  変更できないときの画面は、現在のイメージと「管理者が変更します」の案内だけを出す。
1.  管理者が他のユーザーの画像を変える操作は、サーバー(`user_avatars` のルール)と `AvatarService.set(userId, …)` が対応している。画面は、担当者の画面(`organization`)から開く形で別の Issue とする(この機能は、自分のイメージだけを持つ)。
1.  ログインしていない(`userSummaryProvider` が null)ときは、何も取得しない。

## 画面と遷移
| 画面 | 遷移先 | パス | 枠 |
|---|---|---|---|
| 自分のイメージ | `MyImageDestination` | `/profile/image` | 枠の中 |
メニューの項目は持たず、アプリのユーザーメニュー(`pms_app` の `AppMainFrame`)の「自分のイメージ」から開く。顔写真は `AppMainFrame` が `userAvatarProvider` を `AppUser.photo` へ渡す。

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| 実装の入口 | `lib/user_profile.dart` | `UserProfileModule`、`userAvatarProvider`、`isChangeUserImageProvider`、画像の選択・縮小の差し込み口、文字列 |
| 契約の入口 | `lib/user_profile_api.dart` | 遷移先の型(`MyImageDestination`) |
| モジュール | `lib/src/user_profile_module.dart` | ルートと遷移先の変換 |
| 画面 | `lib/src/pages/my_image_page.dart` | 自分のイメージ |
| 顔写真 | `lib/src/avatar/user_avatar_provider.dart` | `userAvatarProvider`(取得・`change`・`reset`) |
| 既定のイメージ | `lib/src/avatar/default_avatar.dart` | `avatar.svg` を描き起こす |
| 変更の可否 | `lib/src/avatar/image_policy.dart` | `isChangeUserImageProvider` |
| 画像の選択 | `lib/src/avatar/image_picker_gateway.dart` | `IImagePickerGateway`(既定は `file_picker`。2MBまでを読む前に確認) |
| 画像の縮小 | `lib/src/avatar/image_normalizer.dart` | `IImageNormalizer`(既定は長辺512pxの PNG に作り直す) |
| 文字列 | `lib/src/i18n` | slang の Yaml(`ja`が基準、`en`)。`slang.yaml` は `string_interpolation: braces` |

## 実装の指針
1.  画像のアップロードの前に、必ず縮小・再エンコードする(`UiImageNormalizer`)。原寸の画像には位置情報(EXIF)が残るため(サーバーの README の注意)。GIF・アニメーションは最初のコマだけ。
1.  顔写真はサムネイル(256x256)を取る。取得に失敗しても既定のイメージで続け、枠の表示を止めない。失敗は `[user_profile]` 付きでログに残す(画像・URL・トークンは出さない)。
1.  キャッシュのキーは `UserAvatar.cacheKey`(差し替えるとファイル名が変わる)。いまは Provider が結果を持つ(ログイン・登録・初期化のたびに取り直す)。
1.  失敗は文字列ではなく種類(`ImageTooLargeException`・`InvalidImageException`・`PbException` の `kind`)で受け、画面が文言にする。権限が無いとき、登録は400(`validation`)、差し替え・削除は404(`notFound`)で返る(サーバーの仕様)。
1.  アプリ(またはテスト)が差し込むもの: `pbConnectionProvider`(PocketBase の接続)、必要なら `imagePickerGatewayProvider`・`imageNormalizerProvider`・`isChangeUserImageProvider`。PocketBase に接続していないときは、既定のイメージを出し、変更の操作は「ログインが必要です」を出す。
1.  他の機能は `user_profile_api.dart` の型だけを使い、`lib/src` は読み込まない。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  `pbapi` のサービス(`SessionService`・`AvatarService`)を Provider の上書きで差し替え、サーバーには接続しない。画像の選択・縮小・既定のイメージは差し替えるか、`tester.runAsync` で実際に描く。
3.  サーバーのデータを変更するテストは書かない。

## example
`example`(Windows 向けのビジュアルテスト)は、`FeatureHost` でこの機能だけを載せる。PocketBase のセッションと画像の保存先は代役(メモリ上)。変更できる設定で確かめるには `flutter run -d windows --dart-define=IS_CHANGE_USER_IMAGE=true`。起動と、変更できない/できる設定の表示は `example/test/widget_test.dart`。

## 未対応
1.  管理者が他のユーザーの画像を変える画面(担当者の画面から)。
