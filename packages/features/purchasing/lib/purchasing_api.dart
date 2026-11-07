/// 購買の契約。ダッシュボードの集計値の元など、他の機能・アプリが使う型だけを公開する。
/// 実装(画面・ハンドラ)は `purchasing.dart` 側にあり、ここからは参照しない。
library;

export 'src/dashboard/purchasing_metric_sources.dart'
    show
        PurchaseAmountMetricSource,
        PurchaseComplianceMetricSource,
        purchasingMetricSources;
