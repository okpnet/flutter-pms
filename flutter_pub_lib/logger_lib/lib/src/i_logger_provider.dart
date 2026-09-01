abstract interface class ILoggerProvider {
  ///現在のレベル
  int get level;

  ///デバッグ用の詳細情報
  void debug(String message, {Object ex, StackTrace trace});

  ///アプリが「正常に動いている」ことの記録
  void info(String message, {Object ex, StackTrace trace});

  ///異常ではないが注意が必要
  void warn(String message, {Object ex, StackTrace trace});

  ///処理が失敗したがアプリは継続可能
  void error(String message, {Object ex, StackTrace trace});

  ///アプリが継続不能
  void fatal(String message, {Object ex, StackTrace trace});
}
