# theme_lib

機能ごとのページデザインを統一するテーマ管理ライブラリ。

- システム / ライト / ダークの切り替え
- JSON からのテーマ取り込み・書き出し(実行中に反映)
- Riverpod で管理インスタンスを提供し、ログはアプリ共通の `ILoggerProvider` へ出力
- ボタン・チェックボックス・検索窓・余白・文字のテーマ連動拡張

使い方は [doc/contents/usage.md](doc/contents/usage.md)、サンプルは [example](example/lib/main.dart)。
開発規則は [CLAUDE.md](CLAUDE.md)。

```powershell
flutter test                                          # このパッケージのテスト
cd example; flutter test                              # サンプルのテスト
cd example; flutter test tool/screenshots_test.dart   # usage.md 用の画像を再生成
```
