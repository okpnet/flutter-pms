# user_profile ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

user_profile: ログインユーザーの情報(顔写真)の表示と、自分のイメージの変更。画像は PocketBase の user_avatars。

ログインユーザーの顔写真(ユーザー情報の表示)と、自分のイメージの変更。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 表示の部品(`UserContainer`・`AppUser.photo`)は `packages/ui/app_shell` が持つ。このプロジェクトは、画像の取得・変更・既定のイメージ・変更可否の設定と、「自分のイメージ」の画面を持つ。画像は PocketBase の `user_avatars`(`packages/infra/pbapi` の `AvatarService`。サーバーの仕様は `tools/docker/pocketbase/README.md` の「9. ユーザーアバター」)。

### 1.2 範囲

- 場所: `packages/features/user_profile`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`app_shell`、`feature_shared`、`baton_lib`、`pbapi`、`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `DefaultAvatar` | クラス | 既定のイメージ(画面案 `tools/open-design/avatar.svg` を、そのまま描き起こしたもの)。 |
| FR-02 | `defaultAvatarImageProvider` | Riverpod プロバイダ | 既定のイメージ。描くのは1回だけ(アプリの間は使い回す)。テストでは差し替える。 |
| FR-03 | `InvalidImageException` | クラス | 画像として読み込めないとき。 |
| FR-04 | `IImageNormalizer` | インターフェイス | アップロードする前に、画像を縮小・再エンコードする。実体はテストで差し替えられる(Strategy)。 |
| FR-05 | `UiImageNormalizer` | クラス | `dart:ui` のデコーダーで、長辺が [maxEdge] 以下になるよう縮小して PNG にする。 |
| FR-06 | `imageNormalizerProvider` | Riverpod プロバイダ |  |
| FR-07 | `PickedImage` | クラス | 利用者が選んだ画像ファイル。 |
| FR-08 | `ImageTooLargeException` | クラス | 選んだファイルが、扱える大きさを超えているとき(画面案の「2MBまで」)。 |
| FR-09 | `IImagePickerGateway` | インターフェイス | 画像ファイルの選択。実体はアプリ・テストが差し込める(Strategy)。 |
| FR-10 | `PickedImageSource` | 型の別名 | 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。 |
| FR-11 | `PlatformImagePicker` | クラス | OS のファイル選択ダイアログ(`file_picker`)で、PNG・JPEG・GIF・WebP を1つ選ぶ。 |
| FR-12 | `imagePickerGatewayProvider` | Riverpod プロバイダ | 画像ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。 |
| FR-13 | `isChangeUserImageProvider` | Riverpod プロバイダ | ユーザーが自分のイメージを変更できるか(起動時のプロパティ `isChangeUserImage`)。 |
| FR-14 | `UserAvatarState` | クラス | ログインユーザーの顔写真。[isDefault] が true のときは既定のイメージ。 |
| FR-15 | `UserAvatarNotifier` | クラス |  |
| FR-16 | `UserProfileStrings` | 定数・その他 |  |
| FR-17 | `userProfileStringsProvider` | 定数・その他 |  |
| FR-18 | `MyImagePanel` | クラス | 自分のイメージの枠(現在の画像・名前・役割。変更できるときだけ、選ぶ・初期に戻す)。 |
| FR-19 | `UserProfileModule` | クラス | ユーザー情報の表示(自分のイメージ)をアプリへ組み込むための口。 |
| FR-20 | `UserProfilePaths` | クラス | user_profile のパス。文字列はこのファイルだけに書く。 |
| FR-21 | `MyImageDestination` | クラス | 自分のイメージ(ログインユーザーの顔写真の確認・変更)へ。 |
| FR-22 | `UserDisplayDestination` | クラス | ユーザー情報の表示パターン(small・medium・large)の確認へ。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **仕様**: デザインは画面案(`tools/open-design/index.html`・`app.js` の設定画面の「自分のイメージ」)に合わせる。現在の画像・名前・役割のプレビュー、画像ファイルを選ぶ(PNG・JPEG・GIF・WebP、2MBまで)、「初期のイメージに戻す」。
- **表示パターン**: 表示の部品は `app_shell` の `UserContainer`(`size: UserContainerSize`)。
- **画面と遷移**: | 画面 | 遷移先 | パス | 枠 |
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: 画像のアップロードの前に、必ず縮小・再エンコードする(`UiImageNormalizer`)。原寸の画像には位置情報(EXIF)が残るため(サーバーの README の注意)。GIF・アニメーションは最初のコマだけ。
- **example**: `example`(Windows 向けのビジュアルテスト)は、`FeatureHost` でこの機能だけを載せる。PocketBase のセッションと画像の保存先は代役(メモリ上)。変更できる設定で確かめるには `flutter run -d windows --dart-define=IS_CHANGE_USER_IMAGE=true`。起動と、変更でき…
- **未対応**: 管理者が他のユーザーの画像を変える画面(担当者の画面から)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/user_profile.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 20 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 20 件。

- `test/user_profile_test.dart`
  - 見本の遷移先はすべてパスに変換できる(登録漏れ検出)
  - 標準はユーザーが変更できない(起動時のプロパティで変えられる)
  - 裏設定の値を読む(起動時の値が無いとき)
  - 裏設定が未指定なら標準の false(起動時の値が無いとき)
  - ログインしていなければ何も取得しない
  - 登録が無ければ既定のイメージ
  - 登録があればサムネイル(256x256)を取る
  - 取得に失敗しても既定のイメージで続ける(画面は止めない)
  - PocketBase に接続していない(未ログイン)ときも既定のイメージ
  - 標準は変更できない: 現在のイメージと管理者への案内だけを出す
  - 変更できる設定: 選ぶと縮小して登録し、完了を案内する
  - 初期のイメージに戻すと、登録を削除する
  - 取り消しでは何もしない
  - 失敗は種類ごとの文言にする(大きすぎる・画像でない・権限なし)
  - 長辺を512に縮小してPNGにする。小さい画像はそのまま
  - GIFもPNGに変換する(サーバーはGIFを受け付けない)
  - 画像として読み込めないバイト列はInvalidImageException
  - 既定のイメージは画面案(avatar.svg)の大きさのPNGを描く
  - 2MBを超えるファイルは、読む前に断る
  - 取り消しはnull、選べば名前とバイト列を返す

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
