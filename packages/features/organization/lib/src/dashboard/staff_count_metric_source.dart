import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_strategist/lib.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

/// 従業員数の1行(部署 × 役割)。生成モデルの型を機能の外へ出さないための、この機能の型。
class StaffCountRow {
  const StaffCountRow({required this.staffCount, required this.assignCount});

  final int staffCount;
  final int assignCount;
}

/// 取得した1ページ分の行と、条件に合う全件数。
class StaffCountPage {
  const StaffCountPage({required this.rows, required this.totalCount});

  final List<StaffCountRow> rows;
  final int totalCount;
}

/// `StaffCountPage`(従業員数のビュー)を実行する取得関数。
/// `variables`は`GraphqlDataRepository`が組み立てた問い合わせ変数。
GraphqlFetch<StaffCountPage> staffCountFetch(GraphQLClient client) {
  return (variables) async {
    final result = await client.query$StaffCountPageRead(
      Options$Query$StaffCountPageRead(
        variables: Variables$Query$StaffCountPageRead.fromJson(variables),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVStaffCounts;
    if (data == null) return const StaffCountPage(rows: [], totalCount: 0);
    return StaffCountPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<Query$StaffCountPageRead$allVStaffCounts$nodes>())
          StaffCountRow(
            staffCount: n.staffCount?.toInt() ?? 0,
            assignCount: n.assignCount?.toInt() ?? 0,
          ),
      ],
    );
  };
}

/// 従業員数(部署 × 役割のビューを合計)。内訳は配属数。
///
/// 表示項目・絞り込み・集計の単位は未確定のため、暫定として全行の合計とする。
class StaffCountMetricSource implements IMetricSource {
  StaffCountMetricSource(this.repository, {this.pageSize = 500});

  final IDataRepository<StaffCountPage> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'staffCount';

  @override
  String get label => '従業員数';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    var staff = 0;
    var assign = 0;
    var read = 0;
    while (true) {
      final page = await repository.find(
        take: pageSize,
        skip: read,
        predicate: option?.predicate,
      );
      for (final r in page.rows) {
        staff += r.staffCount;
        assign += r.assignCount;
      }
      read += page.rows.length;
      if (page.rows.isEmpty || read >= page.totalCount) break;
    }
    return MetricValue(value: staff, unit: '人', breakdown: {'配属': assign});
  }
}

/// アプリが`metricSourcesProvider`へ差し込む、従業員数の元。
IMetricSource staffCountMetricSource(GraphQLClient client) =>
    StaffCountMetricSource(
      GraphqlDataRepository<StaffCountPage>(
        fetch: staffCountFetch(client),
        filterSpec: StaffCountPageFilterSpec.spec,
      ),
    );
