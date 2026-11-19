# calendar_lib

月のカレンダー表示のライブラリ(`packages/ui`。機能・DB を知らない)。稼働カレンダー(`resource`)などが使う。

## 概要
1.  **データの抽象化**: 日付ごとの値(`CalendarDay<T>`)を、取得元の窓口 `ICalendarSource<T>`(`load`・`save`・`clear`)で読み書きする(Repository / Strategy)。保存先(GraphQL・メモリ)は画面が知らない。範囲の保存は日ごとの保存で、1 つのトランザクションにしない。失敗した日を返し、画面が部分成功を出す。メモリ実装 `InMemoryCalendarSource` つき。
1.  **表示**: `CalendarView<T>`(月のグリッド)。上に月の切り替え・今日。日のセルに、日付・休日のしるし・取得元の値(`cellBuilder`)。今日の強調。範囲外の日は薄く。
1.  **操作**: 押す = その日を選ぶ。ドラッグ(または Shift + 押す)= 範囲を選ぶ。同じ日を続けて押す = 日の操作を開く(`onDayActivated`)。矢印キーで移動、Shift + 矢印キーで範囲を広げる、Enter で日の操作、Esc で選択を解く。選んだ範囲は `CalendarController.selection`、選べる日だけは `selectedDays`。保存のあとは `CalendarController.reload()`。
1.  **開始曜日・表示する曜日**: `firstWeekday`(`DateTime.sunday` など。週の左端)と `visibleWeekdays`(表示する曜日の集合。空はすべて)。値の保存・設定画面は、使う側が持つ(`settings_keeper`)。
1.  **選べない日**: `selectable(day)` が false の日は、薄く出し、選べない(範囲の中でも `selectedDays` に含めない)。
1.  **テーマ**: `CalendarTheme`(`ThemeExtension`)。日曜・土曜・休日・今日・選択・範囲・選べない日の色、セルの高さ・角丸・間隔。登録が無ければ `ColorScheme` から導く(`CalendarTheme.fromScheme`)。色の値を部品の中に直接書かない。
1.  **祝日**: `japaneseHolidays(year)`(2000〜2099 年。振替休日・国民の休日・2019 年の即位の日・2020/2021 年のオリンピックによる移動を含む)。`showJapaneseHolidays` で表示だけ。登録(稼働カレンダーの休日の一括取り込み)は、使う側が `japaneseHolidays` の結果を `ICalendarSource.save` に渡す。
1.  文字(曜日・今日・月の見出し)は `CalendarLabels`で受け取る(既定は日本語)。この部品は多言語の仕組みを持たない。

## テスト
`test/calendar_lib_test.dart`: 祝日の計算・範囲・メモリの取得元・開始曜日・表示する曜日・選択(押す・ドラッグ・選べない日)・休日の見た目・月の移動。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
    2.  使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
2.  命名規則: Flutter の規則・慣例に従う。クラス名はデザインパターンがわかる、または意味が通る英語の名詞とし、ライブラリ名のプリフィクスをつけない。
3.  バレルファイル: `lib/calendar_lib.dart` の 1 行で使えるようにする。
4.  インスタンスの JSON 化: 型は `toJson` を持つ(エラーの追跡用)。
5.  ログ・GOF: ログはこの部品では出さない(取得元・使う側が出す)。クラス名にデザインパターンを含めないものは、コメントにパターン名を書く。

## 規則: プロジェクト間をまたぐ指示
1.  指示をしたプロジェクト: `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト: 指示の内容と、指示をしたプロジェクトを`issue`に追加し、実施した結果を`doc/log`に記録する。
