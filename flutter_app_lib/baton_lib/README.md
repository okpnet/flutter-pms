# 🏃 baton_lib

機能ごとに分かれたライブラリと、それをまとめるアプリの間で **「命令オブジェクト」というバトン** を渡し合うためのライブラリです。🎽

画面遷移もデータ操作も、入口は **ひとつ**。`bus.execute(...)` だけで済みます。

## 🤔 なにが嬉しいの?

機能ライブラリ同士が直接 import し合うと、依存関係がすぐに絡まります。🍝
そこで、やりとりを「命令オブジェクト」に統一します。

- 🧩 **責務が分かれる**: 機能側は「何をしたいか」を命令として書くだけ。実行方法はアプリが決める。
- 🚪 **入口がひとつ**: 画面遷移も処理も `execute` で呼ぶ。
- 🔌 **GoRouterに依存しない**: 遷移の実装はアプリ側から差し込む。
- 🔍 **エラーを追いやすい**: 失敗した場所(本ライブラリ / 機能側 / 遷移)が分かり、命令はJSONでログに残る。

## 📦 インストール

`pubspec.yaml` にパスで追加します。

```yaml
dependencies:
  baton_lib:
    path: ../flutter_app_lib/baton_lib
```

```dart
import 'package:baton_lib/baton_lib.dart'; // これ1行でOK ✨
```

## 🧱 登場人物

| 名前 | 役割 |
|---|---|
| `ActionCommand<R>` | 命令の基底。`R` は結果の型 |
| `PageDestination<R>` | 画面遷移の命令(`ActionCommand` の仲間)。`R` は戻る値の型 |
| `ActionCommandHandler<C, R>` | 命令を実際に処理する人(機能側) |
| `CommandHandlerRegistry` | 命令の型とハンドラの対応表 |
| `DestinationNavigator` | 遷移を実画面に変換する人(アプリ側、GoRouterなど) |
| `CommandBus` / `DefaultCommandBus` | 命令の受付窓口。遷移か処理かを振り分ける |
| `CommandMiddleware` | ログ・権限チェックなど、横断処理の差し込み口 |
| `CommandExecutionException` | 失敗を知らせる例外 |

## 🚀 使い方

### 1️⃣ 機能ライブラリ側: 命令を定義する

```dart
class ApproveOrderCommand extends ActionCommand<void> {
  const ApproveOrderCommand({required this.orderId});
  final int orderId;

  // エラー追跡用。引数をここに足しておくとログで見える 👀
  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'orderId': orderId};
}

class CustomerPickerDestination extends PageDestination<int?> {
  const CustomerPickerDestination();
}
```

### 2️⃣ アプリ側: 組み立てる

```dart
class ApproveOrderHandler
    implements ActionCommandHandler<ApproveOrderCommand, void> {
  @override
  Future<void> handle(ApproveOrderCommand c) async { /* ... */ }
}

class GoRouterNavigator implements DestinationNavigator {
  GoRouterNavigator(this.router);
  final GoRouter router;

  @override
  Future<R> navigate<R>(PageDestination<R> d) async {
    final result = await router.push<R>(resolveLocation(d)); // 型→パスの対応はアプリが持つ
    return result as R;
  }
}

final bus = DefaultCommandBus(
  handlers: CommandHandlerRegistry()..register(ApproveOrderHandler()),
  navigator: GoRouterNavigator(router),
  middlewares: [/* 権限チェック・ログなど */],
);
```

> 💡 Riverpodで配りたいときは、アプリ側で `Provider<CommandBus>((ref) => bus)` を定義してください。

### 3️⃣ 使う側: バトンを渡す

```dart
final id = await bus.execute(const CustomerPickerDestination()); // int? が返る
await bus.execute(const ApproveOrderCommand(orderId: 10));
```

遷移もデータ操作も、同じ呼び方です。🎉

## 🧅 ミドルウェア

先に書いたものが外側になります(玉ねぎ型)。

```dart
Future<Object?> logging(ActionCommand<Object?> c, Future<Object?> Function() next) async {
  print('start: $c');
  final result = await next();
  print('end: $c');
  return result;
}
```

## 🚨 エラーとログ

失敗は `CommandExecutionException` で届きます。`origin` を見れば、どこで失敗したか分かります。

| `FailureOrigin` | 意味 |
|---|---|
| `library` | ハンドラが未登録(本ライブラリが検知) |
| `middleware` | ミドルウェアの失敗 |
| `handler` | 機能側の処理の失敗 |
| `navigator` | 遷移の失敗 |

- 元の例外は `cause` に入っています。
- 同じ内容が `[baton_lib]` という接頭辞付きでエラーログにも出ます(`logger` 使用)。アプリ側のログと見分けやすくなっています。🕵️
- 命令の `toJson()` はエラー追跡用です。JSONからの復元は(今のところ)できません。

## 🗂️ もっと知りたい

- 使い方の詳細: [doc/contents/usage.md](doc/contents/usage.md)
- 生成結果のレポート: [doc/log/](doc/log/)

## 🛠️ 開発

```sh
flutter pub get
flutter analyze
flutter test
```

使用パッケージ: `logger` / `flutter_lints`(他の `flutter_app_lib` とバージョンをそろえています)
