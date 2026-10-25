# settings_keeper の使い方

## 1. 設定の持ち主を作る
```dart
class ThemeSettings implements SettingsOriginator {
  bool dark = false;

  @override
  String get settingsKey => 'theme'; // 保存先は theme.json

  @override
  SettingsMemento createMemento() =>
      SettingsMemento(key: settingsKey, version: 1, values: {'dark': dark});

  @override
  void restoreFrom(SettingsMemento memento) {
    dark = memento.values['dark'] as bool? ?? false;
  }
}
```
`values`にはJSONにできる値(null・bool・数値・文字列・List・Map)だけを入れます。形式を変えたら`version`を上げ、`restoreFrom`で古い版を読み替えます。

## 2. アプリで保存の手段を決める
```dart
ProviderScope(
  overrides: [
    loggerProvider.overrideWithValue(logger),
    settingsStorageProvider.overrideWithValue(FileSettingsStorage(supportDir)),
  ],
  child: const MyApp(),
);
```
上書きしない場合は`InMemorySettingsStorage`(閉じると消える)になります。別の手段(レジストリ、DB、クラウド)を使うときは`SettingsStorage`を実装して同じように上書きします。

## 3. 保存と復元
```dart
final keeper = ref.read(settingsKeeperProvider);
final restored = await keeper.restore(theme); // 無い・読めない場合は false
final saved = await keeper.save(theme);
await keeper.clear('theme');
```
失敗は例外にならず、`[settings_keeper]`付きでログに残って`false`が返ります。

## 4. 自作の SettingsStorage
- `read`は、無ければ`null`、壊れていれば`SettingsStorageException`を投げます。
- `write`・`delete`の失敗も`SettingsStorageException`にします。
- 識別子の検査は`validateSettingsKey(key)`で行えます。
