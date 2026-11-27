# calendar_lib ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

calendar_lib: 月のカレンダー表示。日付ごとの値を抽象化した窓口で読み書きし、1 日・範囲の選択、開始曜日・表示する曜日・休日の色をテーマと設定で変えられる。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/calendar_lib` |
| Dart ファイル(生成物を除く) | 6 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `DateRange` | クラス | 日付だけ(時刻なし)の範囲。[start]・[end] を含む(両端を含む閉区間)。 | `lib/src/calendar_day.dart` |
| `CalendarDay` | クラス | カレンダーの 1 日。値 [value] は、取得元が決める型(稼働カレンダーなら、休日か・始業・稼働時間)。 | `lib/src/calendar_day.dart` |
| `ICalendarSource` | インターフェイス | カレンダーの取得元の窓口(Repository / Strategy)。画面は、保存先(GraphQL・メモリ)を知らない。 | `lib/src/calendar_source.dart` |
| `InMemoryCalendarSource` | クラス | メモリ上の取得元(テスト・example 用)。 | `lib/src/calendar_source.dart` |
| `CalendarTheme` | クラス | カレンダーの色・大きさ。テーマの拡張([ThemeExtension])として登録できる。 | `lib/src/calendar_theme.dart` |
| `CalendarLabels` | クラス | カレンダーの文字(多言語)。既定は日本語。 | `lib/src/calendar_view.dart` |
| `CalendarController` | クラス | カレンダーの操作(選択・再読み込み・月の移動)。画面の外から使う。 | `lib/src/calendar_view.dart` |
| `CalendarCellBuilder` | 型の別名 | 日のセルに、日付の下へ出す中身を作る(null は何も出さない)。 | `lib/src/calendar_view.dart` |
| `CalendarView` | クラス | 月のカレンダー(月のグリッド)。 | `lib/src/calendar_view.dart` |
| `japaneseHolidays` | 関数 | 日本の国民の祝日(2000〜2099 年。振替休日・国民の休日を含む)。日付(時刻なし)→ 名前。 | `lib/src/holidays_jp.dart` |
| `japaneseHolidayName` | 関数 | 日付 [day] が祝日なら、その名前。祝日でなければ null。 | `lib/src/holidays_jp.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `CalendarView` | Strategy(取得元の窓口)・Observer(コントローラー) | `lib/src/calendar_view.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `resource`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **概要**: **データの抽象化**: 日付ごとの値(`CalendarDay<T>`)を、取得元の窓口 `ICalendarSource<T>`(`load`・`save`・`clear`)で読み書きする(Repository / Strategy)。保存先(GraphQL・メモリ)は画面が知らない。範囲の保存は日ごとの保存で、1 つのトランザクションにしない。失敗した…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/calendar_lib_test.dart`(11)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
