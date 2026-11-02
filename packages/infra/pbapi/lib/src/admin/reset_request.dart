import 'package:pocketbase/pocketbase.dart';

/// メールを登録していないユーザーのパスワード再設定の依頼(管理者が本人確認をしてコードを渡す)。
class ResetRequest {
  const ResetRequest({
    required this.id,
    required this.userId,
    required this.username,
    required this.name,
    this.created,
  });

  final String id;

  /// 依頼したユーザーのレコードID。`issueResetCode` に渡す。
  final String userId;
  final String username;
  final String name;
  final DateTime? created;

  factory ResetRequest.fromRecord(RecordModel r) {
    final expanded = r.get<List<RecordModel>>('expand.user');
    final user = expanded.isEmpty ? null : expanded.first;
    return ResetRequest(
      id: r.id,
      userId: r.getStringValue('user'),
      username: user?.getStringValue('username') ?? '',
      name: user?.getStringValue('name') ?? '',
      created: DateTime.tryParse(r.getStringValue('created')),
    );
  }

  Map<String, Object?> toJson() => {
    'id': id,
    'userId': userId,
    'username': username,
    'name': name,
    'created': created?.toIso8601String(),
  };

  @override
  String toString() => 'ResetRequest(${toJson()})';
}
