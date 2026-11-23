import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:work_record_model/work_record_model.dart';

import '../pick/pick_definitions.dart';

/// 選択用の取得元(GraphQL 版。読み取り専用)。作業実績は `trans_work_record`、ロットは `trans_visiter` の
/// 数量が正で、調整でない行(= ロット)。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> workRecordPickRepositories(GraphQLClient client) => [
  _WorkRecordPickRepository(client),
  _LotPickRepository(client),
];

EntityDefinition _definition(String key) => pickDefinitions.firstWhere((d) => d.key == key);

String _text(Object? v) => v == null ? '' : '$v';

String _date(Object? v) {
  final s = _text(v);
  return s.length >= 10 ? s.substring(0, 10) : s;
}

abstract class _PickRepository implements IEntityRepository {
  _PickRepository(this.client, String key) : definition = _definition(key);

  final GraphQLClient client;

  @override
  final EntityDefinition definition;

  @override
  Future<EntityRecord> save(EntityRecord record) => throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) => throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  Future<List<EntityRecord>> read(int first, int offset, Map<String, dynamic> filter);

  @override
  Future<List<EntityRecord>> find({required int take, int skip = 0, Expression? predicate, SortExpression? orders}) => read(take, skip, const {});
}

class _WorkRecordPickRepository extends _PickRepository {
  _WorkRecordPickRepository(GraphQLClient client) : super(client, workRecordPickKey);

  @override
  Future<List<EntityRecord>> read(int first, int offset, Map<String, dynamic> filter) async {
    final result = await client.query$WorkRecordPickPageRead(
      Options$Query$WorkRecordPickPageRead(
        variables: Variables$Query$WorkRecordPickPageRead.fromJson({'first': first, 'offset': offset, if (filter.isNotEmpty) 'filter': filter}),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n in result.parsedData?.allTransWorkRecords?.nodes ?? const <Query$WorkRecordPickPageRead$allTransWorkRecords$nodes?>[])
        if (n != null)
          EntityRecord(
            id: n.transWorkRecordId,
            values: {
              'symbol': _text(n.symbol),
              'qty': _text(n.qty),
              'nth_time': _text(n.nthTime),
              'start_at': _date(n.startAt),
            },
          ),
    ];
  }

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await read(1, 0, {
      'transWorkRecordId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }
}

class _LotPickRepository extends _PickRepository {
  _LotPickRepository(GraphQLClient client) : super(client, lotPickKey);

  /// ロット = 数量が正で、調整でない行。
  static const _lot = {
    'quantity': {'greaterThan': '0'},
    'adjustment': {'equalTo': false},
  };

  @override
  Future<List<EntityRecord>> read(int first, int offset, Map<String, dynamic> filter) async {
    final result = await client.query$LotPickPageRead(
      Options$Query$LotPickPageRead(
        variables: Variables$Query$LotPickPageRead.fromJson({'first': first, 'offset': offset, 'filter': {..._lot, ...filter}}),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n in result.parsedData?.allTransVisiters?.nodes ?? const <Query$LotPickPageRead$allTransVisiters$nodes?>[])
        if (n != null)
          EntityRecord(
            id: n.transVisiterId,
            values: {
              'symbol': _text(n.symbol),
              'quantity': _text(n.quantity),
              'release': n.release == true ? flagOn : '',
            },
          ),
    ];
  }

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await read(1, 0, {
      'transVisiterId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }
}
