import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_strategist/lib.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:production_plan_model/production_plan_model.dart';

/// 生産計画の納期の遵守の状態(DB のビューの `compliance_status`)。
enum WorkPlanCompliance {
  /// 完了日時が完了予定以内。
  onTime,

  /// 完了日時が完了予定より後。
  late,

  /// 未完了で、完了予定を過ぎた。
  overdue,

  /// 未完了で、完了予定が先(または未設定)。
  pending;

  /// ビューの値(`ON_TIME`・`LATE`・`OVERDUE`・`PENDING`)から。知らない値・無いときは [pending]。
  static WorkPlanCompliance parse(String? value) =>
      switch (value?.toUpperCase()) {
        'ON_TIME' => onTime,
        'LATE' => late,
        'OVERDUE' => overdue,
        _ => pending,
      };
}

/// 生産計画納期遵守状況の1行(生産計画明細)。生成モデルの型を機能の外へ出さないための、この機能の型。
class WorkPlanComplianceRow {
  const WorkPlanComplianceRow({
    required this.status,
    required this.plannedQuantity,
    required this.workQuantity,
  });

  final WorkPlanCompliance status;
  final num plannedQuantity;
  final num workQuantity;
}

/// 取得した1ページ分の行と、条件に合う全件数。
class WorkPlanCompliancePage {
  const WorkPlanCompliancePage({required this.rows, required this.totalCount});

  final List<WorkPlanComplianceRow> rows;
  final int totalCount;
}

num _num(String? text) => num.tryParse(text ?? '') ?? 0;

/// `WorkPlanDeliveryCompliancePage`(生産計画納期遵守状況のビュー)を実行する取得関数。
GraphqlFetch<WorkPlanCompliancePage> workPlanComplianceFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$WorkPlanDeliveryCompliancePageRead(
      Options$Query$WorkPlanDeliveryCompliancePageRead(
        variables: Variables$Query$WorkPlanDeliveryCompliancePageRead.fromJson(
          variables,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVWorkPlanDeliveryCompliances;
    if (data == null) {
      return const WorkPlanCompliancePage(rows: [], totalCount: 0);
    }
    return WorkPlanCompliancePage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$WorkPlanDeliveryCompliancePageRead$allVWorkPlanDeliveryCompliances$nodes
                >())
          WorkPlanComplianceRow(
            status: WorkPlanCompliance.parse(n.complianceStatus),
            plannedQuantity: _num(n.plannedQuantity),
            workQuantity: _num(n.workQuantity),
          ),
      ],
    );
  };
}

/// 生産計画納期遵守状況。主値は遵守率(%。完了した分(遵守 + 遅延)のうちの遵守)、
/// 内訳は遵守・遅延・期限超過・未完了の件数。完了が無いときは 0。
///
/// 表示項目・絞り込み・集計の単位は未確定のため、暫定として全行の集計とする。
class WorkPlanComplianceMetricSource implements IMetricSource {
  WorkPlanComplianceMetricSource(this.repository, {this.pageSize = 500});

  final IDataRepository<WorkPlanCompliancePage> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'workPlanCompliance';

  @override
  String get label => '生産納期遵守率';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = <WorkPlanComplianceRow>[];
    while (true) {
      final page = await repository.find(
        take: pageSize,
        skip: rows.length,
        predicate: option?.predicate,
      );
      rows.addAll(page.rows);
      if (page.rows.isEmpty || rows.length >= page.totalCount) break;
    }
    int count(WorkPlanCompliance s) => rows.where((r) => r.status == s).length;
    final onTime = count(WorkPlanCompliance.onTime);
    final late = count(WorkPlanCompliance.late);
    final done = onTime + late;
    return MetricValue(
      value: done == 0 ? 0 : onTime * 100 / done,
      unit: '%',
      breakdown: {
        '遵守': onTime,
        '遅延': late,
        '期限超過': count(WorkPlanCompliance.overdue),
        '未完了': count(WorkPlanCompliance.pending),
      },
    );
  }
}

/// アプリが`metricSourcesProvider`へ差し込む、生産計画の集計値の元。
List<IMetricSource> productionPlanMetricSources(GraphQLClient client) => [
  WorkPlanComplianceMetricSource(
    GraphqlDataRepository<WorkPlanCompliancePage>(
      fetch: workPlanComplianceFetch(client),
      filterSpec: WorkPlanDeliveryCompliancePageFilterSpec.spec,
    ),
  ),
];
