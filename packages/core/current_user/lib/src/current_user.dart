/// ログイン中のユーザー(担当者)。登録・更新の更新者(`update_user_id`・`update_user_history_id`)に使う。
class CurrentUser {
  const CurrentUser({
    required this.staffId,
    required this.staffHistoryId,
    required this.languageCode,
    this.isAdmin = false,
  });

  /// 担当者の ID(`info_staff_id`)。
  final String staffId;

  /// 担当者の最新の履歴の ID(`history_info_staff.history_id`)。
  final String staffHistoryId;

  /// ユーザーの言語コード(ユーザーの環境から決まる。言語別の値の保存・読み込みに使う)。
  final String languageCode;

  final bool isAdmin;

  Map<String, Object?> toJson() => {
    'staffId': staffId,
    'staffHistoryId': staffHistoryId,
    'languageCode': languageCode,
    'isAdmin': isAdmin,
  };

  @override
  String toString() => 'CurrentUser(${toJson()})';
}
