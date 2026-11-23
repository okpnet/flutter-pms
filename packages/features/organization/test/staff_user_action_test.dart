import 'package:flutter_test/flutter_test.dart';
import 'package:organization/organization.dart';

void main() {
  test('作業者の台帳に、行の操作「ユーザーを作成」がある(機能が処理する操作。台帳の画面ではなく、管理者のユーザー作成の画面へ進む)', () {
    final staff = const OrganizationModule().definitions.firstWhere((d) => d.key == 'staff');
    final action = staff.rowActions.singleWhere((a) => a.key == 'create_user');
    expect(action.target, isEmpty); // 実体の画面ではなく、機能が処理する
    // ほかの実体には足さない
    final others = const OrganizationModule().definitions.where((d) => d.key != 'staff');
    expect(others.any((d) => d.rowActions.any((a) => a.key == 'create_user')), isFalse);
  });
}
