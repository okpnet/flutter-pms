# logger_provider の使い方 📝

ログを `logger`(コンソール)と `rotation_log`(ローテーションファイル)の両方へ出す、ちょっと働き者のロガー提供ライブラリです 🪵

## 1. 設定ファイルを用意する 🧰

アセット(例: `assets/logger_provider.json`)に、`logger` と `rotation` を1つのJSONにまとめて置きます。

```json
{
  "logger": {
    "level": "info",
    "printer": "pretty",
    "useConsoleOutput": true
  },
  "rotation": {
    "term": "daily",
    "directoryName": "logs",
    "fileNamePrefix": "rotation",
    "maxArchivedFiles": 10,
    "minimumLevel": "trace"
  }
}
```

省略した項目は既定値になります 👍 `pubspec.yaml` の `flutter > assets` への登録をお忘れなく。

## 2. 生成する 🚀

入力は3通り。どれでも同じ `DefaultLoggerProvider` が得られます。

```dart
import 'package:logger_provider/logger_provider.dart';

// (a) アセットのパスから
final ILoggerProvider log =
    await DefaultLoggerProvider.fromAsset('assets/logger_provider.json');

// (b) Map(JSONをデコードしたもの)から
final log2 = await DefaultLoggerProvider.fromMap({
  'logger': {'level': 'debug'},
});

// (c) 設定オブジェクトから
final log3 = await DefaultLoggerProvider.fromConfig(
  const LoggerProviderConfig(),
);
```

保存先ディレクトリを変えたいとき(テストなど)は `directoryProvider` を渡します 📂

```dart
final log = await DefaultLoggerProvider.fromMap(
  const {},
  directoryProvider: () async => Directory.systemTemp.createTemp('log_'),
);
```

## 3. 書く ✍️

利用側は `ILoggerProvider` 経由で呼び出します。

```dart
log.debug('詳細な情報です');
log.info('アプリは元気に動いています 🌱');
log.warn('ちょっと気になる点があります');

try {
  await doSomething();
} catch (e, st) {
  log.error('処理に失敗しました', ex: e, trace: st);
}

log.fatal('継続できません…');
```

| メソッド | 使いどころ |
| --- | --- |
| `debug` | デバッグ用の詳細情報 🔍 |
| `info` | 正常に動いていることの記録 ✅ |
| `warn` | 異常ではないが注意が必要 ⚠️ |
| `error` | 失敗したが継続可能 ❌ |
| `fatal` | 継続不能 🛑 |

`log.level` で現在の出力レベルを取得できます。

## 4. 後片付け 🧹

終了時に `dispose()` を呼ぶと、`Logger` と `RotationLogger` が破棄されます。

```dart
await (log as DefaultLoggerProvider).dispose();
```

## 補足 💡

- フィルタは `ProductionFilter` を使用します。release ビルドでもファイルへ記録されます。
- `logger` の生インスタンスが必要なら `DefaultLoggerProvider.logger` から取得できます。
