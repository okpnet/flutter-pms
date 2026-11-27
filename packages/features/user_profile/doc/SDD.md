# user_profile ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

user_profile: ログインユーザーの情報(顔写真)の表示と、自分のイメージの変更。画像は PocketBase の user_avatars。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/user_profile` |
| Dart ファイル(生成物を除く) | 13 |
| `lib/src` の分け方 | `avatar(5)`、`i18n(1)`、`pages(2)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `DefaultAvatar` | クラス | 既定のイメージ(画面案 `tools/open-design/avatar.svg` を、そのまま描き起こしたもの)。 | `lib/src/avatar/default_avatar.dart` |
| `defaultAvatarImageProvider` | Riverpod プロバイダ | 既定のイメージ。描くのは1回だけ(アプリの間は使い回す)。テストでは差し替える。 | `lib/src/avatar/default_avatar.dart` |
| `InvalidImageException` | クラス | 画像として読み込めないとき。 | `lib/src/avatar/image_normalizer.dart` |
| `IImageNormalizer` | インターフェイス | アップロードする前に、画像を縮小・再エンコードする。実体はテストで差し替えられる(Strategy)。 | `lib/src/avatar/image_normalizer.dart` |
| `UiImageNormalizer` | クラス | `dart:ui` のデコーダーで、長辺が [maxEdge] 以下になるよう縮小して PNG にする。 | `lib/src/avatar/image_normalizer.dart` |
| `imageNormalizerProvider` | Riverpod プロバイダ |  | `lib/src/avatar/image_normalizer.dart` |
| `PickedImage` | クラス | 利用者が選んだ画像ファイル。 | `lib/src/avatar/image_picker_gateway.dart` |
| `ImageTooLargeException` | クラス | 選んだファイルが、扱える大きさを超えているとき(画面案の「2MBまで」)。 | `lib/src/avatar/image_picker_gateway.dart` |
| `IImagePickerGateway` | インターフェイス | 画像ファイルの選択。実体はアプリ・テストが差し込める(Strategy)。 | `lib/src/avatar/image_picker_gateway.dart` |
| `PickedImageSource` | 型の別名 | 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。 | `lib/src/avatar/image_picker_gateway.dart` |
| `PlatformImagePicker` | クラス | OS のファイル選択ダイアログ(`file_picker`)で、PNG・JPEG・GIF・WebP を1つ選ぶ。 | `lib/src/avatar/image_picker_gateway.dart` |
| `imagePickerGatewayProvider` | Riverpod プロバイダ | 画像ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。 | `lib/src/avatar/image_picker_gateway.dart` |
| `isChangeUserImageProvider` | Riverpod プロバイダ | ユーザーが自分のイメージを変更できるか(起動時のプロパティ `isChangeUserImage`)。 | `lib/src/avatar/image_policy.dart` |
| `UserAvatarState` | クラス | ログインユーザーの顔写真。[isDefault] が true のときは既定のイメージ。 | `lib/src/avatar/user_avatar_provider.dart` |
| `UserAvatarNotifier` | クラス |  | `lib/src/avatar/user_avatar_provider.dart` |
| `UserProfileStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `userProfileStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `MyImagePanel` | クラス | 自分のイメージの枠(現在の画像・名前・役割。変更できるときだけ、選ぶ・初期に戻す)。 | `lib/src/pages/my_image_page.dart` |
| `UserProfileModule` | クラス | ユーザー情報の表示(自分のイメージ)をアプリへ組み込むための口。 | `lib/src/user_profile_module.dart` |
| `UserProfilePaths` | クラス | user_profile のパス。文字列はこのファイルだけに書く。 | `lib/src/user_profile_paths.dart` |
| `MyImageDestination` | クラス | 自分のイメージ(ログインユーザーの顔写真の確認・変更)へ。 | `lib/src/user_profile_destinations.dart` |
| `UserDisplayDestination` | クラス | ユーザー情報の表示パターン(small・medium・large)の確認へ。 | `lib/src/user_profile_destinations.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`app_shell`、`feature_shared`、`baton_lib`、`pbapi`、`logger_provider`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`file_picker`

## 6. 設計上の決定(`CLAUDE.md` より)

- **仕様**: デザインは画面案(`tools/open-design/index.html`・`app.js` の設定画面の「自分のイメージ」)に合わせる。現在の画像・名前・役割のプレビュー、画像ファイルを選ぶ(PNG・JPEG・GIF・WebP、2MBまで)、「初期のイメージに戻す」。
- **表示パターン**: 表示の部品は `app_shell` の `UserContainer`(`size: UserContainerSize`)。
- **画面と遷移**: | 画面 | 遷移先 | パス | 枠 |
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: 画像のアップロードの前に、必ず縮小・再エンコードする(`UiImageNormalizer`)。原寸の画像には位置情報(EXIF)が残るため(サーバーの README の注意)。GIF・アニメーションは最初のコマだけ。
- **example**: `example`(Windows 向けのビジュアルテスト)は、`FeatureHost` でこの機能だけを載せる。PocketBase のセッションと画像の保存先は代役(メモリ上)。変更できる設定で確かめるには `flutter run -d windows --dart-define=IS_CHANGE_USER_IMAGE=true`。起動と、変更でき…
- **未対応**: 管理者が他のユーザーの画像を変える画面(担当者の画面から)。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/user_profile_test.dart`(20)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
