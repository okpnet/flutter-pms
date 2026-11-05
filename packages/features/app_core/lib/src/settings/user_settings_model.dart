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
    this.themeId,
    this.themeMode = 'system',
  });

  /// 値の形式の版。
  static const version = 1;

  static const _themeModes = {'system', 'light', 'dark'};

  /// 使用言語を実行環境(OS)に従わせるか。
  final bool followsSystemLocale;

  /// 使用言語(ISO 639-1)。[followsSystemLocale]が真のときは使わない。
  final String? languageCode;

  /// サイドバーをアイコンだけにするか。
  final bool sidebarIconOnly;

  /// ログインユーザーの名前と役割。ログアウト中(ユーザーなし)は書かない。
  final String? userName;
  final String? userRole;

  /// 適用中のテーマの識別子(`theme_lib`)。無いときは既定のテーマ。
  final String? themeId;

  /// 表示モード: `system`(実行環境に従う)・`light`・`dark`。
  final String themeMode;

  /// 型が違う・無い項目は標準値にする(壊れた保存で起動を止めない)。
  factory UserSettingsModel.fromJson(Map<String, Object?> json) {
    final name = json['userName'];
    final language = json['languageCode'];
    final role = json['userRole'];
    final themeId = json['themeId'];
    final themeMode = json['themeMode'];
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
      themeId: themeId is String && themeId.isNotEmpty ? themeId : null,
      themeMode: themeMode is String && _themeModes.contains(themeMode)
          ? themeMode
          : 'system',
    );
  }

  Map<String, Object?> toJson() => {
    'followsSystemLocale': followsSystemLocale,
    'languageCode': ?languageCode,
    'sidebarIconOnly': sidebarIconOnly,
    'userName': ?userName,
    'userRole': ?userRole,
    'themeId': ?themeId,
    'themeMode': themeMode,
  };

  @override
  bool operator ==(Object other) =>
      other is UserSettingsModel &&
      other.followsSystemLocale == followsSystemLocale &&
      other.languageCode == languageCode &&
      other.sidebarIconOnly == sidebarIconOnly &&
      other.userName == userName &&
      other.userRole == userRole &&
      other.themeId == themeId &&
      other.themeMode == themeMode;

  @override
  int get hashCode => Object.hash(
    followsSystemLocale,
    languageCode,
    sidebarIconOnly,
    userName,
    userRole,
    themeId,
    themeMode,
  );

  @override
  String toString() => 'UserSettingsModel(${toJson()})';
}
