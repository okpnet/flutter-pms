import 'package:pocketbase/pocketbase.dart';

/// ユーザーのアバター画像の識別情報(サーバーの `user_avatars`)。画像の実体は [AvatarService.download] で取る。
class UserAvatar {
  const UserAvatar({
    required this.recordId,
    required this.userId,
    required this.imageName,
    this.updatedBy = '',
    this.updated,
  });

  /// `user_avatars` のレコードID(差し替え・削除に使う)。
  final String recordId;

  /// アバターの持ち主(PocketBase 上のユーザーのレコードID。アプリのDBの `pb_user_id`)。
  final String userId;

  /// 画像のファイル名。差し替えるたびに変わるので、キャッシュのキーに使える([cacheKey])。
  final String imageName;

  /// 最後に登録・差し替えしたユーザーのレコードID(本人または管理者)。
  final String updatedBy;
  final DateTime? updated;

  factory UserAvatar.fromRecord(RecordModel r) => UserAvatar(
    recordId: r.id,
    userId: r.getStringValue('user'),
    imageName: r.getStringValue('image'),
    updatedBy: r.getStringValue('updated_by'),
    updated: DateTime.tryParse(r.getStringValue('updated')),
  );

  /// キャッシュ用のキー。URL の token は毎回変わるので、ファイル名から作る。
  String cacheKey([String? thumb]) => 'avatar:$imageName:${thumb ?? 'orig'}';

  Map<String, Object?> toJson() => {
    'recordId': recordId,
    'userId': userId,
    'imageName': imageName,
    'updatedBy': updatedBy,
    'updated': updated?.toIso8601String(),
  };

  @override
  String toString() => 'UserAvatar(${toJson()})';
}
