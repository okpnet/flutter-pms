/// 裏設定の契約(遷移先の型)。他の機能・アプリはこちらだけを読み込む。
/// 実装(画面・保存)は `backstage.dart` 側にあり、ここからは参照しない。
/// 裏設定の値を読むには `feature_shared` の `backstageValuesProvider` を使う。
library;

export 'src/backstage_destinations.dart';
