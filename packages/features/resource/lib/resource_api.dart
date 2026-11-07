/// 資源の契約。ダッシュボードの集計値の元など、他の機能・アプリが使う型だけを公開する。
/// 実装(画面・ハンドラ)は `resource.dart` 側にあり、ここからは参照しない。
library;

export 'src/dashboard/inspection_status_metric_source.dart'
    show InspectionStatusMetricSource, resourceMetricSources;
