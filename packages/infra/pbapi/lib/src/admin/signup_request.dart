import 'package:pocketbase/pocketbase.dart';

/// 登録の申請(管理者が承認する前の本人情報)。
class SignupRequest {
  const SignupRequest({
    required this.userId,
    required this.fullName,
    required this.requestedUsername,
    required this.contactEmail,
    required this.profile,
    required this.note,
    this.created,
  });

  /// 申請中のユーザーのレコードID(`pb_user_id`)。承認・却下に使い、アプリのDBの担当者にも保存する。
  final String userId;
  final String fullName;
  final String requestedUsername;
  final String contactEmail;

  /// 申請時の本人情報(自由な形式のJSON)。項目の定義は担当者モデル側で決める。
  final Map<String, Object?> profile;
  final String note;
  final DateTime? created;

  factory SignupRequest.fromRecord(RecordModel r) {
    final profile = r.data['profile'];
    return SignupRequest(
      userId: r.getStringValue('user'),
      fullName: r.getStringValue('full_name'),
      requestedUsername: r.getStringValue('requested_username'),
      contactEmail: r.getStringValue('contact_email'),
      profile: profile is Map ? Map<String, Object?>.from(profile) : const {},
      note: r.getStringValue('note'),
      created: DateTime.tryParse(r.getStringValue('created')),
    );
  }

  Map<String, Object?> toJson() => {
    'userId': userId,
    'fullName': fullName,
    'requestedUsername': requestedUsername,
    'contactEmail': contactEmail,
    'profile': profile,
    'note': note,
    'created': created?.toIso8601String(),
  };

  @override
  String toString() => 'SignupRequest(${toJson()})';
}
