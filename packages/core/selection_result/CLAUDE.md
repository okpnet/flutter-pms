# このライブラリについて
## 一般
このライブラリ`selection_result`は、選択画面(別の画面で1件を選んで戻る遷移)が呼び出し元へ返す**選択の結果**の共通の型`Selection`を持ちます。

+   `Selection`は、対象の種類(`entityKey`)、対象を一意に決める値(`id`。UUID は文字列)、画面に出す表示名(`label`)、呼び出し元が必要とする追加の値(`values`。文字列だけ)を持つ値オブジェクトです。
+   呼び出し元は`id`でモデルを引きます。生成されたモデルの型は含めません(機能の外へ出さない規則のため)。
+   受け渡しのデータ効率が必要なときは、短いキーの JSON 文字列にする`encode()`と、戻す`Selection.decode()`を使います(空の表示名・値は省く)。エラー追跡用の JSON は`toJson()`(読みやすいキー)です。
+   選択を返すページ間移動(例: `feature_shared`の`EntityPickerDestination`)は、`PageDestination<Selection?>`とし、取り消しは null を返します。

###　実装イメージ
```dart
// 選択画面側:選んだ行を返す
Navigator.of(context).pop(Selection(entityKey: 'supplier', id: row.id, label: row.name));

// 呼び出し側:CommandBus で受け取る
final selection = await bus.execute(const EntityPickerDestination('supplier'));
if (selection != null) {
  final id = selection.id;             // モデルを引く一意な値
  final json = selection.encode();     // 保存・送信するとき
}
```

##  規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    1.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`に保存する。
    1.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        1.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    1.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    1.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイル`lib/selection_result.dart`にまとめ、使用する側は1行を読み込むだけで解決できるようにする。ライブラリ全体の機能が少ない(10以下)ため、インポートするファイルを分けない。
4.  インスタンスのJSON化
    1.  `Selection`はJSONにコンバートできる(`toJson`/`encode`)。エラー追跡と、選択の結果の受け渡しのためで、機能の復元には使わない。
5.  ログを残す
    1.  値オブジェクトのみでログを出さない。形式が合わない JSON は`FormatException`で呼び出し元へ伝える。
6.  GOFデザインパターン
    1.  `Selection`は Value Object(コメントに記載)。

## テスト
`test/selection_test.dart`: JSON の往復、空の項目を省く、形式が合わないときの`FormatException`、等しさ。
