/// theme_lib が投げる例外の基底。
///
/// ログ・エラー追跡用に [toJson] を持つ。
sealed class ThemeLibException implements Exception {
  const ThemeLibException();

  String get message;

  Map<String, Object?> toJson() => {
    'type': runtimeType.toString(),
    'message': message,
  };

  @override
  String toString() => '$runtimeType: $message';
}

/// テーマJSONの構造・値が不正。[path] は不正箇所（例: `light.seedColor`）。
final class ThemeFormatException extends ThemeLibException {
  const ThemeFormatException(this.path, this.reason);

  final String path;
  final String reason;

  @override
  String get message => path.isEmpty ? reason : '$path: $reason';

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'path': path,
    'reason': reason,
  };
}

/// 指定した id のテーマが登録されていない。
final class ThemeNotFoundException extends ThemeLibException {
  const ThemeNotFoundException(this.id);

  final String id;

  @override
  String get message => 'theme "$id" is not registered';

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

/// 組み込みテーマなど、削除できないテーマへの操作。
final class ThemeProtectedException extends ThemeLibException {
  const ThemeProtectedException(this.id);

  final String id;

  @override
  String get message => 'built-in theme "$id" cannot be removed';

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}
