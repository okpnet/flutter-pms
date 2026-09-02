/// `logger` と `rotation_log` をラップし、`logger_lib` の `ILoggerProvider` を実装する
/// ロガー提供ライブラリ。
///
/// アプリ側は本ライブラリが提供する実体（[DefaultLoggerProvider]）を、
/// `logger_lib` の `ILoggerProvider` インターフェイスを通して利用する。
/// 生成は設定クラス・Map（JSON）・アセットパスのいずれからでも行える
/// ファクトリメソッド（[DefaultLoggerProvider.fromConfig] /
/// [DefaultLoggerProvider.fromMap] / [DefaultLoggerProvider.fromAsset]）で行う。
library;

export 'src/_src.dart';
