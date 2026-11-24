import 'package:announcement/announcement.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 問い合わせを記録して、決めた応答を返す通路(サーバーには接続しない)。
class _FakeLink extends Link {
  final List<Request> requests = [];
  Map<String, dynamic> Function(Request) respond = (_) => {};

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return Stream.value(Response(data: respond(request), response: const {}));
  }
}

String? _name(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

GraphQLClient _client(_FakeLink l) => GraphQLClient(link: l, cache: GraphQLCache());

const _user = AuditUser(staffId: 'staff-1', staffHistoryId: 'hist-1');

void main() {
  test('一覧: 宛先が自分の通知だけを、DB の題名・本文のまま、新しい順に返す', () async {
    final link = _FakeLink()
      ..respond = (r) => switch (_name(r)) {
        null => {
          'allSharedLanguageCodes': {
            'nodes': [
              {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
            ],
          },
        },
        _ => {
          '__typename': 'Query',
          'allTransAnnouncements': {
            '__typename': 'TransAnnouncementsConnection',
            'totalCount': 2,
            'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
            'nodes': [
              {
                '__typename': 'TransAnnouncement',
                'transAnnouncementId': 'a-old',
                'toStaffId': 'staff-1',
                'category': 'approval',
                'isRead': true,
                'expirationDate': null,
                'targetSymbol': null,
                'symbol': 'AN-1',
                'updateAt': '2026-11-20T09:00:00',
                'remove': false,
                'titleLabel': {
                  '__typename': 'TransLabel',
                  'transLabelId': 'l1',
                  'value': {
                    '__typename': 'TransLabelValuesConnection',
                    'nodes': [
                      {'__typename': 'TransLabelValue', 'labelValue': '承認待ち'},
                    ],
                  },
                },
                'messageText': null,
              },
              {
                '__typename': 'TransAnnouncement',
                'transAnnouncementId': 'a-new',
                'toStaffId': 'staff-1',
                'category': 'audit',
                'isRead': false,
                'expirationDate': '2026-11-30T00:00:00',
                'targetSymbol': 'AD-1',
                'symbol': 'AN-2',
                'updateAt': '2026-11-23T09:00:00',
                'remove': false,
                'titleLabel': {
                  '__typename': 'TransLabel',
                  'transLabelId': 'l2',
                  'value': {
                    '__typename': 'TransLabelValuesConnection',
                    'nodes': [
                      {'__typename': 'TransLabelValue', 'labelValue': '監査の予定'},
                    ],
                  },
                },
                'messageText': {
                  '__typename': 'TransText',
                  'transTextId': 't2',
                  'value': {
                    '__typename': 'TransTextValuesConnection',
                    'nodes': [
                      {'__typename': 'TransTextValue', 'textValue': '11/26 に予定'},
                    ],
                  },
                },
              },
            ],
          },
        },
      };
    final gateway = GraphqlAnnouncementGateway(_client(link), auditUser: () async => _user);
    final rows = await gateway.mine();
    expect([for (final a in rows) a.id], ['a-new', 'a-old']);
    expect(rows.first.title, '監査の予定');
    expect(rows.first.message, '11/26 に予定');
    expect(rows.first.targetSymbol, 'AD-1');
    expect(rows.first.isRead, isFalse);
    expect(rows.last.message, '');
    expect(rows.last.isRead, isTrue);
    // 絞り込みは宛先(自分)
    final q = link.requests.last.variables;
    expect((q['filter'] as Map)['toStaffId'], {'equalTo': 'staff-1'});
    expect(q['languageCodeId'], 'lang-ja');
  });

  test('担当者が分からないとき(取得元なし・ログイン前)は、空の一覧で、通信しない', () async {
    final link = _FakeLink();
    expect(await GraphqlAnnouncementGateway(_client(link)).mine(), isEmpty);
    expect(await GraphqlAnnouncementGateway(_client(link), auditUser: () async => null).mine(), isEmpty);
    expect(await GraphqlAnnouncementGateway(_client(link)).notifyDue(), 0);
    expect(link.requests, isEmpty);
  });

  test('既読: 通知の ID と担当者を DB の関数へ渡す', () async {
    final link = _FakeLink()
      ..respond = (_) => {
        '__typename': 'Mutation',
        'announcementMarkRead': {
          '__typename': 'AnnouncementMarkReadPayload',
          'transAnnouncement': {'__typename': 'TransAnnouncement', 'transAnnouncementId': 'a1', 'isRead': true},
        },
      };
    await GraphqlAnnouncementGateway(_client(link), auditUser: () async => _user).markRead('a1');
    expect(_name(link.requests.single), 'AnnouncementMarkReadPageCall');
    expect(link.requests.single.variables, {'pAnnouncementId': 'a1', 'pStaffId': 'staff-1'});
  });

  test('監査の予定の通知づくり: 日数と担当者を渡し、作った件数を返す', () async {
    final link = _FakeLink()
      ..respond = (_) => {
        'auditNotifyDue': {'integer': 2},
      };
    final n = await GraphqlAnnouncementGateway(_client(link), auditUser: () async => _user).notifyDue(daysBefore: 5);
    expect(n, 2);
    expect(link.requests.single.variables, {'pDaysBefore': 5, 'pStaffId': 'staff-1', 'pStaffHistoryId': 'hist-1'});
  });
}
