/// 使用ユーザーにだけ影響する設定の保存形式(JSON)。
///
/// 保存先は知らない。`settings_keeper`のメメントの`values`に[toJson]を入れ、復元では[UserSettingsModel.fromJson]で読む。
/// 形式を変えたら[UserSettingsModel.version]を上げ、[UserSettingsModel.fromJson]で古い版を読み替える。
///
/// パターン: Value Object
class UserSettingsModel {
  const UserSettingsModel({
    this.followsSystemLocale = true,
    this.languageCode,
    this.sidebarIconOnly = false,
    this.userName,
    this.userRole,
  });

  /// 値の形式の版。
  static const version = 1;

  /// 使用言語を実行環境(OS)に従わせるか。
  final bool followsSystemLocale;

  /// 使用言語(ISO 639-1)。[followsSystemLocale]が真のときは使わない。
  final String? languageCode;

  /// サイドバーをアイコンだけにするか。
  final bool sidebarIconOnly;

  /// ログインユーザーの名前と役割。ログアウト中(ユーザーなし)は書かない。
  final String? userName;
  final String? userRole;

  /// 型が違う・無い項目は標準値にする(壊れた保存で起動を止めない)。
  factory UserSettingsModel.fromJson(Map<String, Object?> json) {
    final name = json['userName'];
    final language = json['languageCode'];
    final role = json['userRole'];
    return UserSettingsModel(
      followsSystemLocale: json['followsSystemLocale'] is bool
          ? json['followsSystemLocale']! as bool
          : true,
      languageCode: language is String && language.isNotEmpty ? language : null,
      sidebarIconOnly: json['sidebarIconOnly'] is bool
          ? json['sidebarIconOnly']! as bool
          : false,
      userName: name is String && name.isNotEmpty ? name : null,
      userRole: role is String ? role : null,
    );
  }

  Map<String, Object?> toJson() => {
    'followsSystemLocale': followsSystemLocale,
    'languageCode': ?languageCode,
    'sidebarIconOnly': sidebarIconOnly,
    'userName': ?userName,
    'userRole': ?userRole,
  };

  @override
  bool operator ==(Object other) =>
      other is UserSettingsModel &&
      other.followsSystemLocale == followsSystemLocale &&
      other.languageCode == languageCode &&
      other.sidebarIconOnly == sidebarIconOnly &&
      other.userName == userName &&
      other.userRole == userRole;

  @override
  int get hashCode => Object.hash(
    followsSystemLocale,
    languageCode,
    sidebarIconOnly,
    userName,
    userRole,
  );

  @override
  String toString() => 'UserSettingsModel(${toJson()})';
}
