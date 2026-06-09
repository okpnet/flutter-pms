import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';

abstract class ConditionConverter<T> {
  T toVariables(SearchCondition condition);
}
