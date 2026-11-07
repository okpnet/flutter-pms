import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_strategist/lib.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:resource_model/resource_model.dart';

/// 点検整備実施状況の1行(設備 × 外部供給者)。生成モデルの型を機能の外へ出さないための、この機能の型。
class InspectionStatusRow {
  const InspectionStatusRow({
    required this.isImplemented,
    required this.scheduleDetailCount,
    required this.overdueCount,
  });

  /// 実施済みか。
  final bool isImplemented;

  /// 予定の明細の数。
  final int scheduleDetailCount;

  /// 期限を過ぎた数。
  final int overdueCount;
}

/// 取得した1ページ分の行と、条件に合う全件数。
class InspectionStatusPage {
  const InspectionStatusPage({required this.rows, required this.totalCount});

  final List<InspectionStatusRow> rows;
  final int totalCount;
}

/// `InspectionStatusPage`(点検整備実施状況のビュー)を実行する取得関数。
GraphqlFetch<InspectionStatusPage> inspectionStatusFetch(GraphQLClient client) {
  return (variables) async {
    final result = await client.query$InspectionStatusPageRead(
      Options$Query$InspectionStatusPageRead(
        variables: Variables$Query$InspectionStatusPageRead.fromJson(variables),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVInspectionStatuses;
    if (data == null) {
      return const InspectionStatusPage(rows: [], totalCount: 0);
    }
    return InspectionStatusPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$InspectionStatusPageRead$allVInspectionStatuses$nodes
                >())
          InspectionStatusRow(
            isImplemented: n.isImplemented ?? false,
            scheduleDetailCount: n.scheduleDetailCount?.toInt() ?? 0,
            overdueCount: n.overdueCount?.toInt() ?? 0,
          ),
      ],
    );
  };
}

/// 点検整備実施状況。主値は実施率(%。実施済みの行 ÷ 全行)、内訳は実施済み・未実施の行数と期限超過の数。
///
/// 表示項目・絞り込み・集計の単位は未確定のため、暫定として全行の集計とする。
/// 結果(`result`)の内訳は、単位が決まるまで含めない。
class InspectionStatusMetricSource implements IMetricSource {
  InspectionStatusMetricSource(this.repository, {this.pageSize = 500});

  final IDataRepository<InspectionStatusPage> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'inspectionStatus';

  @override
  String get label => '点検整備実施率';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = <InspectionStatusRow>[];
    while (true) {
      final page = await repository.find(
        take: pageSize,
        skip: rows.length,
        predicate: option?.predicate,
      );
      rows.addAll(page.rows);
      if (page.rows.isEmpty || rows.length >= page.totalCount) break;
    }
    final done = rows.where((r) => r.isImplemented).length;
    return MetricValue(
      value: rows.isEmpty ? 0 : done * 100 / rows.length,
      unit: '%',
      breakdown: {
        '実施済み': done,
        '未実施': rows.length - done,
        '期限超過': rows.fold<int>(0, (a, r) => a + r.overdueCount),
      },
    );
  }
}

/// アプリが`metricSourcesProvider`へ差し込む、資源の集計値の元。
List<IMetricSource> resourceMetricSources(GraphQLClient client) => [
  InspectionStatusMetricSource(
    GraphqlDataRepository<InspectionStatusPage>(
      fetch: inspectionStatusFetch(client),
      filterSpec: InspectionStatusPageFilterSpec.spec,
    ),
  ),
];
