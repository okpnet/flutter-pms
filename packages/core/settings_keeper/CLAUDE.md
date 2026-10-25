# このライブラリについて
## 一般
このライブラリ`settings_keeper`は、アプリのローカル設定(テーマ、ウィンドウの位置、最後に開いた画面など)の保存と復元を担います。保存の手段はアプリ側の方針で差し替えられます。

+   メメント(Memento): 設定の持ち主(`SettingsOriginator`)が自分の状態を`SettingsMemento`(JSONにできる値だけの写し)にして、`SettingsKeeper`(管理者)へ預けます。管理者はメメントの中身を見ません。
+   ストラテジ(Strategy): 保存の手段を`SettingsStorage`として分離します。標準で`FileSettingsStorage`(`<key>.json`をフォルダに保存。一時ファイルへ書いてから置き換える)と`InMemorySettingsStorage`(保存しない)を持ち、レジストリ・DB・クラウドなどはアプリが`SettingsStorage`を実装して差し替えます。

###　実装イメージ
```dart
// アプリ起動時:保存の手段を決める(上書きしなければメモリだけで、閉じると消える)
ProviderScope(
  overrides: [
    loggerProvider.overrideWithValue(logger),
    settingsStorageProvider.overrideWithValue(FileSettingsStorage(supportDir)),
  ],
  child: const MyApp(),
);

// 使う側:持ち主がメメントを作り、管理者が保存・復元する
final keeper = ref.read(settingsKeeperProvider);
await keeper.restore(themeSettings); // 保存が無ければ false で、持ち主は変わらない
await keeper.save(themeSettings);
```

##  規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    1.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`に保存する。
    1.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        1.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    1.  `lib/`以下のディリクトリは2階層を限度とする。機能が少ない(5以下)ため、現在は`lib/src`の1階層。
1.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    1.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。
    1.  プリフィクスにライブラリ名をつけない。
1.  バレルファイルを使用する
    1.  `lib/settings_keeper.dart`の1行で全機能を使えるようにする(機能が10以下のため分けない)。
1.  インスタンスのJSON化
    1.  `SettingsMemento`と`SettingsStorageException`はJSONにコンバートできる。メメントは保存のために復元もできる。
1.  ログを残す
    1.  ロガー(`ILoggerProvider`)は必須の依存で、nullを許容しない。
    1.  このライブラリ側のエラーだけを`[settings_keeper]`接頭辞付きで`error`に残す。保存が無いこと(復元で`false`)はエラーではない。
    1.  ロガーはRiverpodの`loggerProvider`から受け取る。登録はアプリ側の責務。
1.  失敗の扱い
    1.  `SettingsKeeper`は保存・復元・削除の失敗を例外にせず、ログに残して`false`を返す(設定が保存できなくてもアプリは動かし続けるため)。
    1.  `SettingsStorage`の実装は、失敗を`SettingsStorageException`で投げる。
    1.  設定の識別子(`settingsKey`)は英小文字・数字・`_`・`-`・`.`だけで、先頭は英小文字か数字とする(保存先のファイル名になるため、`/`や`..`は拒否する)。
1.  GOFデザインパターン
    1.  Memento: `SettingsOriginator`(持ち主)、`SettingsMemento`(写し)、`SettingsKeeper`(管理者)。
    1.  Strategy: `SettingsStorage`と各実装。
##  使用パッケージ
1.  使用して良いパッケージ
    1.  Riverpod
    1.  logger_provider(ワークスペース内)
    1.  その他必要があれば提案しなければならない。保存先のパスを決める`path_provider`などはアプリ側で使い、このライブラリには入れない。
