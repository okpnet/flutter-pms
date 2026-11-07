/// 営業の契約。ダッシュボードの集計値の元など、他の機能・アプリが使う型だけを公開する。
/// 実装(画面・ハンドラ)は `sales.dart` 側にあり、ここからは参照しない。
library;

export 'src/dashboard/sales_metric_sources.dart'
    show
        SalesRecordMetricSource,
        ShippingOrderStatusMetricSource,
        ShippingComplianceMetricSource,
        salesMetricSources;
