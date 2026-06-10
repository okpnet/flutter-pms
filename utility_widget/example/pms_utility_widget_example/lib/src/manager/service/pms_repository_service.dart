import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';

///
abstract class ReaderService<R> {
  Future<R> read(SearchCondition condition);
}

///
abstract class WriterService {
  Future<void> write<T>(List<T> writeValue);
}
