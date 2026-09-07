// nested_map_flattener_example.dart
//
// nested_map_flattener.dart の動作確認用サンプル。
// 実装の一部ではないので、確認が済んだら削除して構いません。
//
// 実行: dart run nested_map_flattener_example.dart

import 'nested_map_flattener.dart';

void main() {
  // --- ケース1: 1対1リレーションが存在するレコード -----------------------
  final withToOneRelation = <String, dynamic>{
    'infoCompanyId': 'company-1',
    'ceo': '山田太郎',
    'sharedAppellationBySharedAppellationsId': {
      'name': '株式会社サンプル',
      'pronunciation': 'サンプル',
    },
  };

  // --- ケース2: 1対1リレーションがnullのレコード(FKはnull許容) ----------
  final withoutToOneRelation = <String, dynamic>{
    'infoCompanyId': 'company-2',
    'ceo': '鈴木花子',
    'sharedAppellationBySharedAppellationsId': null,
  };

  // --- ケース3: 1対多リレーション(Relay Connection形状)。該当1件 --------
  // PostGraphileは該当が1件であっても `nodes`/`edges` を持つConnection形状で
  // 返す。ここが「件数で判定してはいけない」理由そのもの。
  final withToManyRelationSingleRow = <String, dynamic>{
    'infoCompanyId': 'company-3',
    'ceo': '佐藤次郎',
    'historyInfoStaffsByInfoCompanyId': {
      'totalCount': 1,
      'pageInfo': {'hasNextPage': false, 'hasPreviousPage': false},
      'nodes': [
        {'staffName': '田中', 'role': '営業'},
      ],
      'edges': [
        {
          'cursor': 'abc',
          'node': {'staffName': '田中', 'role': '営業'},
        },
      ],
    },
  };

  // --- ケース4: 1対多リレーション。該当0件 --------------------------------
  final withToManyRelationEmpty = <String, dynamic>{
    'infoCompanyId': 'company-4',
    'ceo': '高橋三郎',
    'historyInfoStaffsByInfoCompanyId': {
      'totalCount': 0,
      'pageInfo': {'hasNextPage': false, 'hasPreviousPage': false},
      'nodes': <dynamic>[],
      'edges': <dynamic>[],
    },
  };

  print('=== 汎用フラット化(引数なし) ===');
  print(withToOneRelation.flatten());
  // {infoCompanyId: company-1, ceo: 山田太郎,
  //  sharedAppellationBySharedAppellationsId||name: 株式会社サンプル,
  //  sharedAppellationBySharedAppellationsId||pronunciation: サンプル}

  print(withoutToOneRelation.flatten());
  // {infoCompanyId: company-2, ceo: 鈴木花子,
  //  sharedAppellationBySharedAppellationsId: null}
  // ↑ 注目: リレーションがnullだと、withToOneRelationと列構成が食い違う。
  //   TrinaGridの列を固定したい場合は下のflattenForColumnsを使う。

  print(withToManyRelationSingleRow.flatten());
  // {infoCompanyId: company-3, ceo: 佐藤次郎,
  //  historyInfoStaffsByInfoCompanyId: {totalCount: 1, pageInfo: {...},
  //    nodes: [...], edges: [...]}}
  // ↑ 該当が1件でも、Connectionオブジェクトそのものがリーフ値として
  //   まるごと保持される(nodesの中身を1対1と誤認してフラット化しない)。

  print(withToManyRelationEmpty.flatten());
  // {infoCompanyId: company-4, ceo: 高橋三郎,
  //  historyInfoStaffsByInfoCompanyId: {totalCount: 0, pageInfo: {...},
  //    nodes: [], edges: []}}
  // ↑ 該当0件でも同じ構造(Connectionオブジェクト自体)がそのまま残る。
  //   1対1がnullになるケース(ケース2)とは表現が異なる点に注意。

  print('\n=== 安定フラット化(列指定あり、1対1のみ) ===');
  const gridColumnFields = <String>[
    'infoCompanyId',
    'ceo',
    'sharedAppellationBySharedAppellationsId||name',
    'sharedAppellationBySharedAppellationsId||pronunciation',
  ];

  final rowA = withToOneRelation.flattenForColumns(gridColumnFields);
  final rowB = withoutToOneRelation.flattenForColumns(gridColumnFields);
  print(rowA);
  // {infoCompanyId: company-1, ceo: 山田太郎,
  //  sharedAppellationBySharedAppellationsId||name: 株式会社サンプル,
  //  sharedAppellationBySharedAppellationsId||pronunciation: サンプル}
  print(rowB);
  // {infoCompanyId: company-2, ceo: 鈴木花子,
  //  sharedAppellationBySharedAppellationsId||name: null,
  //  sharedAppellationBySharedAppellationsId||pronunciation: null}
  // ↑ 2行とも同じ4キー構成になる(TrinaGridの列とズレない)。

  print('\n=== 安定フラット化(列指定あり、1対多を明示的にcollapse) ===');
  // 「この画面ではhistoryInfoStaffsByInfoCompanyIdは実質1件しか無い/
  // 先頭の1件だけ見たい」と分かっている場合だけ、collapseSingleRecordPathsに
  // Connectionまでのパスを明示的に渡す。渡さない限り、下のような列は
  // 常にnullになる(1対多を暗黙に1件へ潰すことはしない)。
  const toManyColumnFields = <String>[
    'infoCompanyId',
    'ceo',
    'historyInfoStaffsByInfoCompanyId||staffName',
    'historyInfoStaffsByInfoCompanyId||role',
  ];

  final rowCNotCollapsed =
      withToManyRelationSingleRow.flattenForColumns(toManyColumnFields);
  print(rowCNotCollapsed);
  // {infoCompanyId: company-3, ceo: 佐藤次郎,
  //  historyInfoStaffsByInfoCompanyId||staffName: null,
  //  historyInfoStaffsByInfoCompanyId||role: null}
  // ↑ collapseSingleRecordPathsを渡さないと、1対多は安全側に倒してnull。

  final rowCCollapsed = withToManyRelationSingleRow.flattenForColumns(
    toManyColumnFields,
    collapseSingleRecordPaths: {'historyInfoStaffsByInfoCompanyId'},
  );
  print(rowCCollapsed);
  // {infoCompanyId: company-3, ceo: 佐藤次郎,
  //  historyInfoStaffsByInfoCompanyId||staffName: 田中,
  //  historyInfoStaffsByInfoCompanyId||role: 営業}
  // ↑ 明示的に渡すと、先頭の1件(nodes[0])を単一レコードとして展開する。

  final rowDCollapsedButEmpty = withToManyRelationEmpty.flattenForColumns(
    toManyColumnFields,
    collapseSingleRecordPaths: {'historyInfoStaffsByInfoCompanyId'},
  );
  print(rowDCollapsedButEmpty);
  // {infoCompanyId: company-4, ceo: 高橋三郎,
  //  historyInfoStaffsByInfoCompanyId||staffName: null,
  //  historyInfoStaffsByInfoCompanyId||role: null}
  // ↑ collapse指定があっても該当0件ならnullに落ちる(存在しないものは展開できない)。

  print('\n=== 復元(round-trip確認) ===');
  final restored = rowA.unflatten();
  print(restored);
  // {infoCompanyId: company-1, ceo: 山田太郎,
  //  sharedAppellationBySharedAppellationsId: {name: 株式会社サンプル, pronunciation: サンプル}}

  assert(restored['sharedAppellationBySharedAppellationsId']['name'] == '株式会社サンプル');

  // 1対多(Connectionオブジェクト)を含むMapも、flatten()→unflatten()で
  // そのまま往復することを確認する(collapseしていない限り、リーフとして
  // 保持されるだけなので当然round-tripする)。
  final flatWithConnection = withToManyRelationSingleRow.flatten();
  final restoredWithConnection = flatWithConnection.unflatten();
  assert(
    restoredWithConnection['historyInfoStaffsByInfoCompanyId']['nodes'][0]
            ['staffName'] ==
        '田中',
  );

  print('round-trip OK');
}
