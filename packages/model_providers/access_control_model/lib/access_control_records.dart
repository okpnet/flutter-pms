/// アクセス管理の窓口([AccessControlClient])が返す・受け取る平らな型。生成されたモデルの型は外へ出さない。
///
/// id は GraphQL の UUID を文字列として扱う。
library;

/// アクセスパス(ページ)。名前は ja・en の2言語。
class AccessPathRecord {
  const AccessPathRecord({
    this.id = '',
    this.nameJa = '',
    this.nameEn = '',
    this.usecasePath = '',
    this.symbol = '',
    this.remarks = '',
  });

  /// 空のときは新規。
  final String id;
  final String nameJa;
  final String nameEn;

  /// ページのパス。
  final String usecasePath;

  /// DB のトリガーが自動で付ける(読み取りだけ。登録・更新では送らない)。
  final String symbol;
  final String remarks;

  Map<String, Object?> toJson() => {
    'id': id,
    'nameJa': nameJa,
    'nameEn': nameEn,
    'usecasePath': usecasePath,
    'symbol': symbol,
    'remarks': remarks,
  };
}

/// 部署のアクセスパス(部署 × アクセスパス)。
class DepartmentAccessPathRecord {
  const DepartmentAccessPathRecord({
    this.id = '',
    required this.departmentId,
    required this.accessPathId,
    this.write = false,
    this.remarks = '',
  });

  final String id;
  final String departmentId;
  final String accessPathId;
  final bool write;
  final String remarks;

  Map<String, Object?> toJson() => {
    'id': id,
    'departmentId': departmentId,
    'accessPathId': accessPathId,
    'write': write,
    'remarks': remarks,
  };
}

/// 担当者のアクセスパス許可(担当者 × アクセスパス)。所属部署の権限に足す。
class StaffAccessPermissionRecord {
  const StaffAccessPermissionRecord({
    this.id = '',
    required this.staffId,
    required this.accessPathId,
    this.write = false,
    this.remarks = '',
  });

  final String id;
  final String staffId;
  final String accessPathId;
  final bool write;
  final String remarks;

  Map<String, Object?> toJson() => {
    'id': id,
    'staffId': staffId,
    'accessPathId': accessPathId,
    'write': write,
    'remarks': remarks,
  };
}

/// 担当者の実効アクセスパス(`v_staff_effective_access_path`。読み取り専用)。
class EffectiveAccessPathRecord {
  const EffectiveAccessPathRecord({
    required this.staffId,
    required this.accessPathId,
    required this.usecasePath,
    required this.canWrite,
    required this.fromDepartment,
    required this.fromStaff,
  });

  final String staffId;
  final String accessPathId;
  final String usecasePath;
  final bool canWrite;
  final bool fromDepartment;
  final bool fromStaff;

  Map<String, Object?> toJson() => {
    'staffId': staffId,
    'accessPathId': accessPathId,
    'usecasePath': usecasePath,
    'canWrite': canWrite,
    'fromDepartment': fromDepartment,
    'fromStaff': fromStaff,
  };
}
