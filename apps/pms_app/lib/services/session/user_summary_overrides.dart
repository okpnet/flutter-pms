import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:organization/organization.dart' show userDisplayLookup;
import 'package:user_profile/user_profile.dart' show userAvatarProvider;

import '../graphql/graphql_overrides.dart' show graphqlClientProvider;

/// ログインユーザーの表示(名前・所属・顔写真)の元を、アプリが差し込む。
///
/// - 名前と所属: ログインの直後に、担当者のモデル(`organization` の `userDisplayLookup`。GraphQL)から氏名と所属の部署名を引く。
///   GraphQL に接続しないとき・引けないとき(担当者・割当が無い、通信の失敗)は、認証サーバーの氏名(無ければユーザーID)だけにする。
/// - 顔写真: `user_profile` の顔写真(取得中・取得できないときは写真なし)。
List<Override> userSummaryOverrides() => [
  userSummaryResolverProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    final lookup = client == null ? null : userDisplayLookup(client);
    return (request) async {
      final base = request.name.isNotEmpty ? request.name : request.username;
      if (lookup == null) return UserSummary(name: base);
      try {
        final d = await lookup(request.staffId);
        return UserSummary(
          name: d.name.isNotEmpty ? d.name : base,
          role: d.department,
        );
      } catch (e, st) {
        ref
            .read(loggerProvider)
            .warn('[pms_app] 担当者の氏名・所属を引けませんでした', ex: e, trace: st);
        return UserSummary(name: base);
      }
    };
  }),
  userPhotoProvider.overrideWith(
    (ref) => ref.watch(userAvatarProvider).value?.image,
  ),
];
