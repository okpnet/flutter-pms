import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:organization_model/organization_model.dart';

import 'organization_repositories.dart' show LanguageCodeCache;

/// ログインユーザーの表示用の情報(氏名・所属の部署名)。
class UserDisplay {
  const UserDisplay({required this.name, required this.department});

  /// 担当者の氏名(言語コード `ja` の値)。無ければ空。
  final String name;

  /// 所属の部署名(有効な割当のうち優先順位が最も高いもの)。無ければ空。
  final String department;
}

/// 担当者の ID から、氏名と所属の部署名を引く関数を作る。
///
/// 割当(`info_assign`。有効なもののうち優先順位が最も高いもの。`AssignPage`)から担当者の氏名と部署の ID を取り、
/// 部署(`DepartmentPage`)から部署名を取る(どちらも既存の生成モデル)。アプリが `feature_shared` の
/// `userSummaryResolverProvider` に差し込む。割当・部署が無いときは、その値を空にする。通信の失敗は、そのまま投げる。
/// 生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果を、表示用の値にする)
Future<UserDisplay> Function(String staffId) userDisplayLookup(
  GraphQLClient client,
) {
  final language = LanguageCodeCache(client);
  return (staffId) async {
    final languageId = await language.id;
    final assign = await client.query$AssignPageRead(
      Options$Query$AssignPageRead(
        variables: Variables$Query$AssignPageRead.fromJson({
          'first': 1,
          'languageCodeId': languageId,
          'filter': {
            'infoStaffId': {'equalTo': staffId},
            'enable': {'equalTo': true},
          },
          'orderBy': ['PRIORITY_ASC'],
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = assign.exception;
    if (e != null) throw e;
    final rows = assign.parsedData?.allInfoAssigns?.nodes ?? const [];
    final row = rows.isEmpty ? null : rows.first;
    if (row == null) return const UserDisplay(name: '', department: '');
    final name = LocalizedValues.fromDictionary(
      row.staff?.labels?.sharedDictionaryBySharedDictionaryNameId,
    ).resolve('ja');
    final dept = await client.query$DepartmentPageRead(
      Options$Query$DepartmentPageRead(
        variables: Variables$Query$DepartmentPageRead.fromJson({
          'first': 1,
          'languageCodeId': languageId,
          'filter': {
            'infoDepartmentId': {'equalTo': row.infoDepartmentId},
          },
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final de = dept.exception;
    if (de != null) throw de;
    final nodes = dept.parsedData?.allInfoDepartments?.nodes ?? const [];
    final department = nodes.isEmpty || nodes.first == null
        ? ''
        : LocalizedValues.fromDictionary(
            nodes.first!.labels?.sharedDictionaryBySharedDictionaryNameId,
          ).resolve('ja');
    return UserDisplay(name: name, department: department);
  };
}
