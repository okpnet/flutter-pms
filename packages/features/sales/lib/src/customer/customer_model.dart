/// 顧客。列名は graphql_provider_lib の `CustomerPage`(`MstrStakeholder`)に合わせる。
///
/// 現状は表示と編集に必要な項目だけを持つ。GraphQL の生成型からの変換はリポジトリ側で行う。
class Customer {
  const Customer({
    required this.id,
    required this.code,
    required this.name,
    this.mail = '',
    this.phone = '',
  });

  final String id;
  final String code;
  final String name;
  final String mail;
  final String phone;

  Customer copyWith({String? name}) => Customer(
    id: id,
    code: code,
    name: name ?? this.name,
    mail: mail,
    phone: phone,
  );

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'id': id,
    'code': code,
    'name': name,
    'mail': mail,
    'phone': phone,
  };
}
