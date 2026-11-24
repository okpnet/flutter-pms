import 'package:baton_lib/baton_lib.dart';

/// アクセス権の一括設定の画面へ(部署または担当者を選び、アクセスパスの許可・書き込みをまとめて設定する)。
final class AccessBulkDestination extends PageDestination<void> {
  const AccessBulkDestination({this.scope = 'department', this.targetId});

  /// 最初に選ぶ対象の種類。`department`(部署)または `staff`(担当者)。画面の選択肢で、DB には持たない。
  final String scope;

  /// 最初に選ぶ対象の ID(部署または担当者)。
  final String? targetId;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'scope': scope, 'targetId': targetId};
}
