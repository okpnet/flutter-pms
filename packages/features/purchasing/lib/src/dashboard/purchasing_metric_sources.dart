import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:data_strategist/lib.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:purchasing_model/purchasing_model.dart';

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

/// 発注金額の1行(外部供給者 × 品目 × 納期 × 受入済み)。
class PurchaseAmountRow {
  const PurchaseAmountRow({
    required this.purchaseQuantity,
    required this.receivedQuantity,
    required this.purchaseAmount,
    required this.receivedAmount,
  });

  final num purchaseQuantity;
  final num receivedQuantity;
  final num purchaseAmount;
  final num receivedAmount;
}

/// 発注納期遵守状況の1行。
class PurchaseComplianceRow {
  const PurchaseComplianceRow({
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

/// `PurchaseAmountPage`(発注金額のビュー)を実行する取得関数。
GraphqlFetch<MetricPage<PurchaseAmountRow>> purchaseAmountFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$PurchaseAmountPageRead(
      Options$Query$PurchaseAmountPageRead(
        variables: Variables$Query$PurchaseAmountPageRead.fromJson(variables),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVPurchaseAmounts;
    if (data == null) return const MetricPage(rows: [], totalCount: 0);
    return MetricPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$PurchaseAmountPageRead$allVPurchaseAmounts$nodes
                >())
          PurchaseAmountRow(
            purchaseQuantity: _num(n.purchaseQuantity),
            receivedQuantity: _num(n.receivedQuantity),
            purchaseAmount: _num(n.purchaseAmount),
            receivedAmount: _num(n.receivedAmount),
          ),
      ],
    );
  };
}

/// `PurchaseDeliveryCompliancePage`(発注納期遵守状況のビュー)を実行する取得関数。
GraphqlFetch<MetricPage<PurchaseComplianceRow>> purchaseComplianceFetch(
  GraphQLClient client,
) {
  return (variables) async {
    final result = await client.query$PurchaseDeliveryCompliancePageRead(
      Options$Query$PurchaseDeliveryCompliancePageRead(
        variables: Variables$Query$PurchaseDeliveryCompliancePageRead.fromJson(
          variables,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final exception = result.exception;
    if (exception != null) throw exception;
    final data = result.parsedData?.allVPurchaseDeliveryCompliances;
    if (data == null) return const MetricPage(rows: [], totalCount: 0);
    return MetricPage(
      totalCount: data.totalCount,
      rows: [
        for (final n
            in data.nodes
                .whereType<
                  Query$PurchaseDeliveryCompliancePageRead$allVPurchaseDeliveryCompliances$nodes
                >())
          PurchaseComplianceRow(
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

/// 発注金額。主値は発注金額の合計(円)、内訳は入荷金額と発注・入荷の数量。
///
/// 表示項目・絞り込み・集計の単位は未確定のため、暫定として全行の合計とする
/// (期間・外部供給者・品目の絞り込みは未対応)。
class PurchaseAmountMetricSource implements IMetricSource {
  PurchaseAmountMetricSource(this.repository, {this.pageSize = 500});

  final MetricRepository<PurchaseAmountRow> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'purchaseAmount';

  @override
  String get label => '発注金額';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = await _readAll(repository, pageSize, option);
    num sum(num Function(PurchaseAmountRow) f) =>
        rows.fold<num>(0, (a, r) => a + f(r));
    return MetricValue(
      value: sum((r) => r.purchaseAmount),
      unit: '円',
      breakdown: {
        '入荷金額': sum((r) => r.receivedAmount),
        '発注数量': sum((r) => r.purchaseQuantity),
        '入荷数量': sum((r) => r.receivedQuantity),
      },
    );
  }
}

/// 発注納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。
class PurchaseComplianceMetricSource implements IMetricSource {
  PurchaseComplianceMetricSource(this.repository, {this.pageSize = 500});

  final MetricRepository<PurchaseComplianceRow> repository;

  /// 1回に取得する行数。
  final int pageSize;

  @override
  String get key => 'purchaseCompliance';

  @override
  String get label => '発注納期遵守率';

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<MetricValue> metric(CountFilterOption? option) async {
    final rows = await _readAll(repository, pageSize, option);
    int sum(int Function(PurchaseComplianceRow) f) =>
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

/// アプリが`metricSourcesProvider`へ差し込む、購買の集計値の元。
List<IMetricSource> purchasingMetricSources(GraphQLClient client) => [
  PurchaseAmountMetricSource(
    GraphqlDataRepository<MetricPage<PurchaseAmountRow>>(
      fetch: purchaseAmountFetch(client),
      filterSpec: PurchaseAmountPageFilterSpec.spec,
    ),
  ),
  PurchaseComplianceMetricSource(
    GraphqlDataRepository<MetricPage<PurchaseComplianceRow>>(
      fetch: purchaseComplianceFetch(client),
      filterSpec: PurchaseDeliveryCompliancePageFilterSpec.spec,
    ),
  ),
];
