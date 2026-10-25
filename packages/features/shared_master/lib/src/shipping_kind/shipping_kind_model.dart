/// 配送区分。列名は graphql_provider_lib の `ShippingKindReadFields`(`MstrShippingKind`)に合わせる。
///
/// 名称・読み・略称は GraphQL では名称辞書(`labels`)の値。ここでは平らにして持つ。
class ShippingKind {
  const ShippingKind({
    required this.id,
    required this.code,
    required this.name,
    this.pronunciation = '',
    this.nickname = '',
    this.remarks = '',
  });

  final String id;
  final String code;
  final String name;
  final String pronunciation;
  final String nickname;
  final String remarks;

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'id': id,
    'code': code,
    'name': name,
    'pronunciation': pronunciation,
    'nickname': nickname,
    'remarks': remarks,
  };
}

/// 登録・更新の入力値。[id] が null なら新規。
class ShippingKindDraft {
  const ShippingKindDraft({
    this.id,
    required this.code,
    required this.name,
    this.pronunciation = '',
    this.nickname = '',
    this.remarks = '',
  });

  final String? id;
  final String code;
  final String name;
  final String pronunciation;
  final String nickname;
  final String remarks;

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'id': id,
    'code': code,
    'name': name,
    'pronunciation': pronunciation,
    'nickname': nickname,
    'remarks': remarks,
  };
}

/// 入力の検証エラーの種類(画面が文字列に変換する)。
enum ShippingKindValidationError { codeRequired, nameRequired, codeDuplicated }

/// 入力の検証に失敗したときの例外(画面にメッセージを出す)。
class ShippingKindValidationException implements Exception {
  const ShippingKindValidationException(this.error);

  final ShippingKindValidationError error;

  @override
  String toString() => error.name;
}

/// 他で使用中のため削除できないときの例外。
class ShippingKindInUseException implements Exception {
  const ShippingKindInUseException(this.id);

  final String id;

  @override
  String toString() => 'ShippingKindInUseException($id)';
}
