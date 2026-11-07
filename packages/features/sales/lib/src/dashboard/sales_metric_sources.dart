import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_strategist/lib.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:sales_model/sales_model.dart';

/// 数値(DB の BigFloat は文字列で届く)を読む。読めない・無いときは 0。
num _num(String? text) => num.tryParse(text ?? '') ?? 0;

/// 取得した1ページ分の行と、条件に合う全件数。生成モデルの型を機能の外へ出さないための、この機能の型。
class MetricPage<R> {
  const MetricPage({required this.rows, required this.totalCount});

  final List<R> rows;
  final int totalCount;
}

/// 集計値の元が使う取得元。
typedef MetricRepository<R> = IDataRepository<MetricPage<R>>;

/// 全ページを `totalCount` まで読み進めて、行を集める。
Future<List<R>> _readAll<R>(
  MetricRepository<R> repository,
  int pageSize,
  CountFilterOption? option,
) async {
  final rows = <R>[];
  while (true) {
    final page = await repository.find(
      take: pageSize,
      skip: rows.length,
      predicate: option?.predicate,
    );
    rows.addAll(page.rows);
    if (page.rows.isEmpty || rows.length >= page.totalCount) break;
  }
  return rows;
}

/// 売り上げ実績の1行(納期の日 × 顧客 × 品目 × 出荷済み)。
class SalesRecordRow {
  const SalesRecordRow({
    required this.orderQuantity,
    required this.shippedQuantity,
    required this.orderAmount,
    required this.shippedAmount,
  });

  final num orderQuantity;
  final num shippedQuantity;
  final num orderAmount;
  final num shippedAmount;
}

/// 出荷予定受注実績状況の1行。
class ShippingOrderStatusRow {
  const ShippingOrderStatusRow({
    required this.scheduledQuantity,
    required this.shippedQuantity,
    required this.remainingQuantity,
    required this.scheduledAmount,
    required this.shippedAmount,
  });

  final num scheduledQuantity;
  final num shippedQuantity;
  final num remainingQuantity;
  final num scheduledAmount;
  final num shippedAmount;
}

/// 出荷納期遵守状況の1行。
class ShippingComplianceRow {
  const ShippingComplianceRow({
    required this.onTime,
    required this.late,
    required this.overdue,
    required this.pending,
  });

  final int onTime;
  final int late;
  final int overdue;
  final int pending;
}

/// `SalesRecordPage`(売り上げ実績のビュー)を実行する取得関数。
GraphqlFetch<MetricPage<SalesRecordRow>> salesRecordFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$SalesRecordPageRead(
      Options$Query$SalesRecordPageRead(
        variables: Variables$Query$SalesRecordPageRead.fromJson(variables),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVSalesRecords;
    if (data == null) return const MetricPage(rows: [], totalCount: 0);
    return MetricPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<Query$SalesRecordPageRead$allVSalesRecords$nodes>())
          SalesRecordRow(
            orderQuantity: _num(n.orderQuantity),
            shippedQuantity: _num(n.shippedQuantity),
            orderAmount: _num(n.orderAmount),
            shippedAmount: _num(n.shippedAmount),
          ),
      ],
    );
  };
}

/// `ShippingOrderStatusPage`(出荷予定受注実績状況のビュー)を実行する取得関数。
GraphqlFetch<MetricPage<ShippingOrderStatusRow>> shippingOrderStatusFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$ShippingOrderStatusPageRead(
      Options$Query$ShippingOrderStatusPageRead(
        variables: Variables$Query$ShippingOrderStatusPageRead.fromJson(
          variables,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVShippingOrderStatuses;
    if (data == null) return const MetricPage(rows: [], totalCount: 0);
    return MetricPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$ShippingOrderStatusPageRead$allVShippingOrderStatuses$nodes
                >())
          ShippingOrderStatusRow(
            scheduledQuantity: _num(n.scheduledQuantity),
            shippedQuantity: _num(n.shippedQuantity),
            remainingQuantity: _num(n.remainingQuantity),
            scheduledAmount: _num(n.scheduledAmount),
            shippedAmount: _num(n.shippedAmount),
          ),
      ],
    );
  };
}

/// `ShippingDeliveryCompliancePage`(出荷納期遵守状況のビュー)を実行する取得関数。
GraphqlFetch<MetricPage<ShippingComplianceRow>> shippingComplianceFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$ShippingDeliveryCompliancePageRead(
      Options$Query$ShippingDeliveryCompliancePageRead(
        variables: Variables$Query$ShippingDeliveryCompliancePageRead.fromJson(
          variables,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVShippingDeliveryCompliances;
    if (data == null) return const MetricPage(rows: [], totalCount: 0);
    return MetricPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$ShippingDeliveryCompliancePageRead$allVShippingDeliveryCompliances$nodes
                >())
          ShippingComplianceRow(
            onTime: n.onTimeCount?.toInt() ?? 0,
            late: n.lateCount?.toInt() ?? 0,
            overdue: n.overdueCount?.toInt() ?? 0,
            pending: n.pendingCount?.toInt() ?? 0,
          ),
      ],
    );
  };
}

/// 遵守率(%)。完了したもの(遵守 + 遅延)のうち、遵守の割合。完了が無いときは 0。
num complianceRate({required int onTime, required int late}) {
  final done = onTime + late;
  return done == 0 ? 0 : onTime * 100 / done;
}

/// 売り上げ実績。主値は出荷済みの金額の合計(円)、内訳は受注金額と数量。
///
/// 表示項目・絞り込み・集計の単位は未確定のため、暫定として全行の合計とする
/// (期間・顧客・品目の絞り込みは未対応)。
class SalesRecordMetricSource implements IMetricSource {
  SalesRecordMetricSource(this.repository, {this.pageSize = 500});

  final MetricRepository<SalesRecordRow> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'salesRecord';

  @override
  String get label => '売り上げ実績';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = await _readAll(repository, pageSize, option);
    num sum(num Function(SalesRecordRow) f) =>
        rows.fold<num>(0, (a, r) => a + f(r));
    return MetricValue(
      value: sum((r) => r.shippedAmount),
      unit: '円',
      breakdown: {
        '受注金額': sum((r) => r.orderAmount),
        '受注数量': sum((r) => r.orderQuantity),
        '出荷数量': sum((r) => r.shippedQuantity),
      },
    );
  }
}

/// 出荷予定受注実績状況。主値は出荷残の数量の合計、内訳は予定・出荷済みの数量と金額。
class ShippingOrderStatusMetricSource implements IMetricSource {
  ShippingOrderStatusMetricSource(this.repository, {this.pageSize = 500});

  final MetricRepository<ShippingOrderStatusRow> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'shippingOrderStatus';

  @override
  String get label => '出荷予定受注実績状況';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = await _readAll(repository, pageSize, option);
    num sum(num Function(ShippingOrderStatusRow) f) =>
        rows.fold<num>(0, (a, r) => a + f(r));
    return MetricValue(
      value: sum((r) => r.remainingQuantity),
      unit: '個',
      breakdown: {
        '予定数量': sum((r) => r.scheduledQuantity),
        '出荷済み数量': sum((r) => r.shippedQuantity),
        '予定金額': sum((r) => r.scheduledAmount),
        '出荷済み金額': sum((r) => r.shippedAmount),
      },
    );
  }
}

/// 出荷納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。
class ShippingComplianceMetricSource implements IMetricSource {
  ShippingComplianceMetricSource(this.repository, {this.pageSize = 500});

  final MetricRepository<ShippingComplianceRow> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'shippingCompliance';

  @override
  String get label => '出荷納期遵守率';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = await _readAll(repository, pageSize, option);
    int sum(int Function(ShippingComplianceRow) f) =>
        rows.fold<int>(0, (a, r) => a + f(r));
    final onTime = sum((r) => r.onTime);
    final late = sum((r) => r.late);
    return MetricValue(
      value: complianceRate(onTime: onTime, late: late),
      unit: '%',
      breakdown: {
        '遵守': onTime,
        '遅延': late,
        '期限超過': sum((r) => r.overdue),
        '未完了': sum((r) => r.pending),
      },
    );
  }
}

/// アプリが`metricSourcesProvider`へ差し込む、営業の集計値の元。
List<IMetricSource> salesMetricSources(GraphQLClient client) => [
  SalesRecordMetricSource(
    GraphqlDataRepository<MetricPage<SalesRecordRow>>(
      fetch: salesRecordFetch(client),
      filterSpec: SalesRecordPageFilterSpec.spec,
    ),
  ),
  ShippingOrderStatusMetricSource(
    GraphqlDataRepository<MetricPage<ShippingOrderStatusRow>>(
      fetch: shippingOrderStatusFetch(client),
      filterSpec: ShippingOrderStatusPageFilterSpec.spec,
    ),
  ),
  ShippingComplianceMetricSource(
    GraphqlDataRepository<MetricPage<ShippingComplianceRow>>(
      fetch: shippingComplianceFetch(client),
      filterSpec: ShippingDeliveryCompliancePageFilterSpec.spec,
    ),
  ),
];
