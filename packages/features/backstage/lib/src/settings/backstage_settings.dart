import 'dart:convert';

/// 裏設定の項目(保存する値)。null は「指定なし」(次の優先順位の値に従う)。
///
/// 保管庫・アセットの既定値は、この形の JSON。
/// ```json
/// {"isChangeUserImage": false, "graphqlUrl": "https://...", "pocketbaseUrl": "https://...",
///  "maintenanceUrl": "https://...", "logLevel": "info", "sidebarIconOnly": false}
/// ```
class BackstageSettings {
  const BackstageSettings({
    this.isChangeUserImage,
    this.graphqlUrl,
    this.pocketbaseUrl,
    this.maintenanceUrl,
    this.logLevel,
    this.sidebarIconOnly,
  });

  final bool? isChangeUserImage;
  final String? graphqlUrl;
  final String? pocketbaseUrl;
  final String? maintenanceUrl;
  final String? logLevel;
  final bool? sidebarIconOnly;

  bool get isEmpty =>
      isChangeUserImage == null &&
      graphqlUrl == null &&
      pocketbaseUrl == null &&
      maintenanceUrl == null &&
      logLevel == null &&
      sidebarIconOnly == null;

  /// 型の違う値・空の文字列は無いものとして読む(壊れた保存値でアプリを止めない)。
  factory BackstageSettings.fromJson(Map<String, Object?> json) {
    bool? b(String key) => json[key] is bool ? json[key]! as bool : null;
    String? s(String key) {
      final v = json[key];
      return v is String && v.trim().isNotEmpty ? v.trim() : null;
    }

    return BackstageSettings(
      isChangeUserImage: b('isChangeUserImage'),
      graphqlUrl: s('graphqlUrl'),
      pocketbaseUrl: s('pocketbaseUrl'),
      maintenanceUrl: s('maintenanceUrl'),
      logLevel: s('logLevel'),
      sidebarIconOnly: b('sidebarIconOnly'),
    );
  }

  /// JSON 文字列から読む。読めない(壊れている)ときは null。
  static BackstageSettings? tryParse(String? text) {
    if (text == null || text.trim().isEmpty) return null;
    try {
      final decoded = jsonDecode(text);
      if (decoded is! Map) return null;
      return BackstageSettings.fromJson(Map<String, Object?>.from(decoded));
    } on FormatException {
      return null;
    }
  }

  Map<String, Object?> toJson() => {
    if (isChangeUserImage != null) 'isChangeUserImage': isChangeUserImage,
    if (graphqlUrl != null) 'graphqlUrl': graphqlUrl,
    if (pocketbaseUrl != null) 'pocketbaseUrl': pocketbaseUrl,
    if (maintenanceUrl != null) 'maintenanceUrl': maintenanceUrl,
    if (logLevel != null) 'logLevel': logLevel,
    if (sidebarIconOnly != null) 'sidebarIconOnly': sidebarIconOnly,
  };

  @override
  bool operator ==(Object other) =>
      other is BackstageSettings &&
      jsonEncode(toJson()) == jsonEncode(other.toJson());

  @override
  int get hashCode => jsonEncode(toJson()).hashCode;
}

/// 項目。検証の結果を、どの項目か分けて返すために使う。
enum BackstageField {
  isChangeUserImage,
  graphqlUrl,
  pocketbaseUrl,
  maintenanceUrl,
  logLevel,
  sidebarIconOnly,
}

/// 検証の失敗の種類。画面が表示時に文言へ変換する。
enum BackstageIssueKind { urlInvalid, urlNotHttps, logLevelUnknown }

class BackstageIssue {
  const BackstageIssue(this.field, this.kind);

  final BackstageField field;
  final BackstageIssueKind kind;

  @override
  String toString() => 'BackstageIssue(${field.name}, ${kind.name})';
}

/// ログのレベル(`logger` の `Level` の名前)。
const backstageLogLevels = [
  'trace',
  'debug',
  'info',
  'warning',
  'error',
  'fatal',
];

/// 接続先 URL の検証。`https` であること。`http` はローカルのネットワークのときだけ。
abstract final class BackstageUrlRules {
  /// 問題があれば種類を返す(問題なしは null)。空は「指定なし」なので問題なし。
  static BackstageIssueKind? check(String? url) {
    if (url == null || url.trim().isEmpty) return null;
    final uri = Uri.tryParse(url.trim());
    if (uri == null ||
        !uri.hasAuthority ||
        uri.host.isEmpty ||
        (uri.scheme != 'https' && uri.scheme != 'http')) {
      return BackstageIssueKind.urlInvalid;
    }
    if (uri.scheme == 'https') return null;
    return isLocalNetwork(uri.host) ? null : BackstageIssueKind.urlNotHttps;
  }

  /// ローカルのネットワークのホストか(`localhost`・ループバック・プライベート・リンクローカル・
  /// `.local`・ドットを含まない名前)。
  static bool isLocalNetwork(String host) {
    final h = host.toLowerCase();
    if (h == 'localhost' || h == '::1' || h.endsWith('.local')) return true;
    final v4 = RegExp(
      r'^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$',
    ).firstMatch(h);
    if (v4 != null) {
      final a = int.parse(v4[1]!);
      final b = int.parse(v4[2]!);
      if (a > 255 ||
          b > 255 ||
          int.parse(v4[3]!) > 255 ||
          int.parse(v4[4]!) > 255) {
        return false;
      }
      return a == 10 ||
          a == 127 ||
          (a == 172 && b >= 16 && b <= 31) ||
          (a == 192 && b == 168) ||
          (a == 169 && b == 254);
    }
    // IPv6 のリテラルは、ループバック以外はローカルと見なさない(https を使う)。
    if (h.contains(':')) return false;
    return !h.contains('.');
  }

  /// 設定の全項目を検証する。
  static List<BackstageIssue> validate(BackstageSettings s) => [
    for (final (field, url) in [
      (BackstageField.graphqlUrl, s.graphqlUrl),
      (BackstageField.pocketbaseUrl, s.pocketbaseUrl),
      (BackstageField.maintenanceUrl, s.maintenanceUrl),
    ])
      if (check(url) case final kind?) BackstageIssue(field, kind),
    if (s.logLevel != null && !backstageLogLevels.contains(s.logLevel))
      const BackstageIssue(
        BackstageField.logLevel,
        BackstageIssueKind.logLevelUnknown,
      ),
  ];
}
