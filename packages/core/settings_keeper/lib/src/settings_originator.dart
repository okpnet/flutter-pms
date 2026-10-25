import 'settings_memento.dart';

/// 保存したい設定の持ち主。
///
/// GoFパターン: Memento の Originator。
/// 例: テーマ、ウィンドウの位置、最後に開いた画面。
abstract interface class SettingsOriginator {
  /// 設定の識別子。英小文字・数字・`_`・`-`・`.` だけを使う(保存先の名前になる)。
  String get settingsKey;

  /// 現在の状態を写し取る。
  SettingsMemento createMemento();

  /// 保存済みの状態へ戻す。形式の版が古い場合は [SettingsMemento.version] で読み替える。
  void restoreFrom(SettingsMemento memento);
}
