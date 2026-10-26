# page_mediator_extension

ページ用の拡張(Mediator)。ページが、データ取得・設定の保存・セッション確認を、具体的な実装(`data_strategist`・`settings_keeper`・認証)を知らずに、インターフェイス経由で使えるようにする。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
プロジェクト名は、ページと複数のライブラリの間に立って責務を分離する(Mediator)ことから `page_mediator_extension` とした。

## 提供する機能
| 機能 | インターフェイス | 標準の実装 | 差し込み口(Riverpod) |
|---|---|---|---|
| データ取得(data_strategist) | `IPageDataMediator`(`fetch<R>`。結果の型はジェネリック) | `PageDataMediator`(失敗は `[page_mediator_extension]` 付きでログに残して再送出) | `pageDataMediatorProvider` |
| 設定の保存と復元(settings_keeper) | `IPageSettingsMediator`(`restore`・`save`・`clear`) | `PageSettingsMediator`(`SettingsKeeper` へ委譲。失敗は `false`) | `pageSettingsMediatorProvider`(保存先は `settingsStorageProvider`) |
| セッション確認(認証・メンテナンス) | `IPageSessionMediator`(`check`・`refresh`) | `NoopPageSessionMediator`(常に有効。テストで使う) | `pageSessionMediatorProvider` |

1.  ジェネリックにするかは、データの結果が一覧・件数・1件などページごとに違うため、ジェネリック(`fetch<R>(IQueryState<R>)`)を選んだ。
2.  拡張の形は、`ConsumerStatefulWidget` 向けの `mixin PageMediatorMixin`(with。`pageData`・`pageSettings`・`pageSession`・`enterPage()`・`onSessionUnusable`)と、`ConsumerWidget` 向けの `extension PageMediatorRef on WidgetRef`(`ref.pageData` など)。ページは `enterPage()` を、表示・更新のタイミングで呼ぶ。
3.  セッション確認の実体(認証は `pms_authenticator` の `AuthController.checkAndApplyExpiration`/`refreshToken`、メンテナンスは `maintenance` の `MaintenanceAwarePageSession`)はアプリが `pageSessionMediatorProvider` へ差し込む。この層(core)は features の `pms_authenticator` に依存できないため、実装を持たない。テストでは差し込まない(何もしない既定のまま)。

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| バレル | `lib/page_mediator_extension.dart` | 全機能の1行の入口 |
| データ取得 | `lib/src/page_data_mediator.dart` | `IPageDataMediator`・`PageDataMediator` |
| 設定 | `lib/src/page_settings_mediator.dart` | `IPageSettingsMediator`・`PageSettingsMediator` |
| セッション | `lib/src/page_session_mediator.dart` | `PageSessionStatus`・`IPageSessionMediator`・`NoopPageSessionMediator` |
| 差し込み口 | `lib/src/page_mediator_providers.dart` | 3つの Provider |
| 拡張 | `lib/src/page_mediator_ref_extension.dart` | `PageMediatorMixin`・`PageMediatorRef` |

## example

1.  `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。

##  規則
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    4.  細分化した機能別に`lib/`以下のディリクトリを2階層を限度(`lib/xxx/xxx`)として分ける。細分化の程度は、2階層になる程度の抽象度とする。
        1.  細分化する機能が少ない(5以下)のとき、1階層で良い(`lib/xxx`)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、 ユーザーの仕様体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログがけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2. ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.	GOFデザインパターン
	1.	クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
	2.	必ずしもデザインパターンに割り当てる必要はない
